# Создание папки с ограничением

Лучшим решением может быть использование файла в качестве виртуального диска. Подробное описание вы найдете в статье Как создать виртуальный том жесткого диска с помощью файла в Linux . Ниже приведено краткое изложение метода на примере.

- https://www.tecmint.com/create-virtual-harddisk-volume-in-linux/

Пример: создание тома VHD размером 1 ГБ образа

```bash
sudo dd if=/dev/zero of=VHD.img bs=1M count=1200
sudo mkfs -t ext4 /media/VHD.img
sudo mkdir /mnt/VHD/
sudo mount -t auto -o loop /media/VHD.img /mnt/VHD/
```

## В-1 Добавить в /etc/systemd/system

* vim /etc/systemd/system/media-mount-01.mount

```
# /etc/systemd/system/media-mount-01.mount:
[Unit]
Description=Data mount

[Mount]
What=/dev/disk/by-uuid/filesystem_UUID
Where=/mnt/data
Type=ext4
Options=defaults

[Install]
WantedBy=multi-user.target
```

* systemctl daemon-reload
* systemctl enable media-mount-01.mount --now

```
[Unit]
Description=Automount

[Automount]
Where=/mnt/data
TimeoutIdleSec=600

[Install]
WantedBy=multi-user.target
```

* systemctl enable media-mount-01.automount --now

## В-2 Добавить в /etc/fstab:

```
/media/VHD.img  /mnt/VHD/  ext4    defaults        0  0
```