# Создание соединения типа ipvlan

## Скрипт create-network.shg

```bash
create_network.sh local_net wlp2s0
```

```bash
#!/bin/bash

docker network rm $1
docker network create \
  --driver=ipvlan \
  --subnet=192.168.31.0/24 \
  --ip-range=192.168.31.0/24 \
  --gateway=192.168.31.1 \
  -o parent=$2 \
  -o ipvlan_mode=l2 \
  $1

docker network ls
```

## docker-compose

```yaml
networks:
  default:
    name: localhost_net

services:
  testapp:
    ...
    networks:
      default:
        ipv4_address: 192.168.31.2
```