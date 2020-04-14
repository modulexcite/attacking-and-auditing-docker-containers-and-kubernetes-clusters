# Attacking Container Capabilities - Scenario

In this scenario we will exploit a container with `sys_ptrace` capability running with host `PID` namespace. We will exploit these to breakout of the container and access the host system. We assume that the attacker already has access to the container for this scenario.

* Login to the container using below command. Ensure that you run this in the `CTF` vm 

```bash
docker exec -it sysmon bash
```

![docker exec into sysmon](images/sysmon-access.png)