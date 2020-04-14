# Docker Volumes - Solution

* Inspecting docker volumes

```bash
docker volume inspect 1e030154f4952361cec6c21e838a0fb617c7b7cc6359570407eb9f697b229b67
```

![docker volume inspect](images/docker-volume-inspect.png)

* Looking for sensitive data and secrets

```bash
sudo -i
cd /var/lib/docker/volumes/1e030154f4952361cec6c21e838a0fb617c7b7cc6359570407eb9f697b229b67/_data
ls
grep -i 'flag' wp-config.php
grep -i 'password' wp-config.php
```

![looking for data in volumes](images/docker-volumes-data.png)
