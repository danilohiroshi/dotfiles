## Install Docker

```bash
# Docker
$ sudo apt-get -y --no-install-recommends install parallel zip unzip git curl meld gitg vim mysql-client nfs-common mc php-curl jq
$ wget -qO- https://get.docker.com/ | sudo bash
$ sudo usermod -aG docker $USER
$ sudo chown $USER:docker /var/run/docker.sock
# Docker Compose
$ curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > docker-compose
$ sudo mv docker-compose /usr/local/bin/
$ sudo chmod +x /usr/local/bin/docker-compose
# Test
$ docker --version
$ docker-compose --version
  
$ docker run hello-world
```