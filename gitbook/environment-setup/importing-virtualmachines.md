# Importing virtual machines

The students need to import two virtual machines for docker labs

1. `docker-student.ova`
2. `docker-ctf.ova`


## Download VM

| VM Name | Source URL |
|---------|------------|
| docker-student.ova | http://www.mediafire.com/file/72xe4d4vv10fgxz/docker-student.ova/file |
| docker-ctf.ova | http://www.mediafire.com/file/39e1w5wt7tmxr43/docker-ctf.ova/file |

The `checksums` are available at `http://www.mediafire.com/file/6xp3c7voy60zn1e/checksum.txt/file`

## Student Machine (docker-student.ova)

* Open VirtualBox, and select `File` -> `Import Appliance` from the top menu

![Importing student ova](images/import-ova.png)

* Select `docker-student.ova` file from the `workshop-content` folder

![selecting student ova](images/select-student-ova.png)

* Check the "Reintialize the MAC address of all network cards" checkbox, and click on Next to import the ova file

![student ova settings](images/student-ova-settings.png)

* Now we can see that ova file is importing

![processing](images/processing.png)

* Use following credentials for `student` VM login

```bash
username: student
password: Docker@321
```

![student vm login](images/student-vm-login.png)

* Your IP address may differ from what is visible in the screenshot. Please note down this IP address for later use

## CTF Machine (docker-ctf.ova)


* Open VirtualBox, and select `File` -> `Import Appliance` from the top menu

![Importing ctf ova](images/import-ova.png)

* Select `docker-ctf.ova` file from the `workshop-content` folder

![selecting ctf ova](images/select-ctf-ova.png)

* Check the "Reintialize the MAC address of all network cards" checkbox, and click on Next to import the ova file

![ctf ova settings](images/ctf-ova-settings.png)

* Use following credentials for `ctf` VM login

```bash
username: ctf
password: Dockerctf@321
```

![ctf vm login](images/ctf-vm-login.png)

* Your IP address may differ from what is visible in the screenshot. Please note down this IP address for later use

## Test Setup

### Ensure Networking within VM

> Ensure you are able to `ping` one VM from the other.

![VM Networking](images/vm-networking.png)

### Ensure SSH Access from Host

> Ensure you are able to SSH into both `Student` and `CTF` VM from your host using an SSH client.

![VM Host SSH](images/vm-host-ssh.png)