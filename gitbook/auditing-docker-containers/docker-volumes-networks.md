# Auditing Docker Volumes and Networks

## Listing and inspecting the docker volumes

* Listing docker volumes

```bash
docker volume ls
```

![docker volume ls](images/docker-volume-ls.png)

* Inspecting docker volumes

```bash
docker volume inspect wordpress_db_data
```

![docker volume inspect](images/docker-volume-inspect.png)

* Volumes can be used with Ready-Only, Read-Write modes


## Listing and inspecting the docker networks

* Docker by default creates it's own networking namespace when we use Docker Swarm or Docker Compose

* By default bridge, host, null networking options are available

* Listing the docker networks

```bash
docker network ls
```

![docker network ls](images/docker-network-ls.png)

* Inspecting the docker network

```bash
docker inspect wordpress_default
```

![docker network inspect](images/docker-network-inspect.png)


> We can use our traditional toolset like `nmap` (or) `nc` for performing scans and information gathering