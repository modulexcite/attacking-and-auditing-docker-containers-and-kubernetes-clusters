# Exploiting docker misconfiguration - Scenario

In this scenario we will see a misconfigured `docker` instance with exposed TCP ports on the network. We will use this with docker runtime option to access the containers, images and gain host system privileges.

> The Docker daemon can listen for Docker Engine API requests via three different types of Socket `unix`, `tcp`, and `fd`. To access remotely we have to enable `tcp` socket. The default setup provides un-encrypted and un-authenticated direct access to the Docker daemon.


* Your weapon to attack this scenario is the popular `nmap` tool