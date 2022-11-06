# Создание локальной сети с драйвером bridge

## docker - ipvlan - wifi

```bash
create_network.sh wlp2s0
```

```bash
#!/bin/bash

N="localhost_net"
docker network rm $N
docker network create \
  --driver=ipvlan \
  --subnet=192.168.31.0/24 \
  --ip-range=192.168.31.0/24 \
  --gateway=192.168.31.1 \
  -o parent=$1 \
  -o ipvlan_mode=l2 \
  $N

docker network ls
```