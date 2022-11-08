# Установка docker на ubuntu

## В-1 Установка с помощью скрипта

- https://github.com/docker/docker-install

From https://get.docker.com:

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```

From https://test.docker.com:

```bash
curl -fsSL https://test.docker.com -o test-docker.sh
sh test-docker.sh
```

From the source repo (This will install latest from the stable channel):

```bash
sh install.sh
```

## В-2 Ручная установка

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Receiving a GPG error when running apt-get update?
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world

```

- https://docs.docker.com/engine/install/linux-postinstall/

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
# Log out and log back in so that your group membership is re-evaluated
docker run hello-world
# WARNING: Error loading config file: /home/user/.docker/config.json
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
```

### Configure Docker to start on boot with systemd

```
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

## Установка docker-compose

### В-1 Автоматическая

```
sudo apt-get update
sudo apt-get install docker-compose-plugin
docker compose version
```

### В-2 Ручная установка

```bash
# Docker Compose for all users on your system, replace ~/.docker/cli-plugins with /usr/local/lib/docker/cli-plugins
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
docker compose version
```

## Установка docker-machine

- https://github.com/docker/machine

```bash
git clone https://github.com/docker/machine
cd machine
make

docker-machine create -d virtualbox default
docker-machine ls
eval "$(docker-machine env default)"
docker run busybox echo hello world
```


## Uninstall Docker Engine

```
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
```