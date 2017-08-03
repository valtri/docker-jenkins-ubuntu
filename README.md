# Info

Basic Jenkins node Ubuntu image

Installed:

* Java 8 JRE headless
* openssh server
* sudo

# Usage

In Jenkins:

* for example with *Docker Plugin*

Credentials:

* jenkins/jenkins

Manual launch:

    docker pull valtri/docker-jenkins-ubuntu
    docker run -itd --name jenkins-ubuntu valtri/docker-jenkins-ubuntu

# Tags

* **16**, **latest**: Ubuntu 16.04 (xenial)
* **14**: Ubuntu 14.04 (trusty)
