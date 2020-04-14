# docker-compose wordpress setup

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a Compose file to configure your application's services. Then, using a single command, you create and start all the services from your configuration


* Let's setup wordpress site using docker-compose

```bash
cd /opt/wordpress
docker-compose up -d
```

![docker compose wordpress](images/docker-compose-wordpress.png)

* Access the wordpress site using `http://STUDENTVMIP:8000`

![wordpress site](images/wordpress-site.png)

> Ignore any error related to broken CSS. This is due to IP address mismatch in Wordpress configuration.

## Looking at `docker-compose.yml`

* Inspecting the compose file by running `less /opt/wordpress/docker-compose.yml`

```yml
version: '3.3'

services:
   db:
     image: mysql:5.7
     volumes:
       - db_data:/var/lib/mysql
     restart: always
     environment:
       MYSQL_ROOT_PASSWORD: SuperSecret321
       MYSQL_DATABASE: wordpress
       MYSQL_USER: wordpress
       MYSQL_PASSWORD: ComplicatedPassword

   wordpress:
     depends_on:
       - db
     image: wordpress:latest
     ports:
       - "8000:80"
     restart: always
     environment:
       WORDPRESS_DB_HOST: db:3306
       WORDPRESS_DB_USER: wordpress
       WORDPRESS_DB_PASSWORD: ComplicatedPassword
volumes:
    db_data:
```
