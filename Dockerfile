FROM ubuntu:14.04
MAINTAINER František Dvořák <valtri@civ.zcu.cz>

RUN apt-get update \
 && apt-get install -y --no-install-recommends software-properties-common \
 && add-apt-repository -y ppa:openjdk-r/ppa \
 && apt-get update \
 && apt-get install -y --no-install-recommends git openjdk-8-jre-headless openssh-server sudo \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd \
 && useradd -m -d /home/jenkins -s /bin/bash jenkins \
 && sed -i '/root\tALL=/a jenkins ALL=(ALL) NOPASSWD: ALL' /etc/sudoers

EXPOSE 22

COPY docker-entry.sh /
CMD ["/docker-entry.sh", "/usr/sbin/sshd", "-D"]
