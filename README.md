# Коллекции docker-compose файлов сервисов.

- col_docker_compose_files https://github.com/hightemp/col_docker_compose_files

## Доки

- Установка
  - Ubuntu
    - [Установка docker на ubuntu](docs/docker-install/ubuntu_common.md)
- Сети
  - [Создание локальной сети с драйвером bridge](docs/networks/create-network.md)
- Реестр, репозиторий, registry
  - [Как поднять docker registry](docs/registry/registry_common.md)
- [Ссылки](docs/links/index.md)

## Шаблоны docker-compose файлы проектов

- Прокси
  - Traefik
    - [traefik_avahi_v1](docker-compose/proxy-servers/reverse-proxy/traefik-mdns-avahi/traefik_avahi_v1/README.md)
  - PProxy
    - [pproxy_v1](docker-compose/proxy-servers/proxy/pproxy/pproxy_v1/docker-compose.yml)
- WEB-Сервер
  - PHP
    - [php_app_v1](docker-compose/web-servers/php-apps/php_app_v1/README.md)
- Почтовые сервера
  - [docker-mailserver](docker-compose/mail-servers/docker-mailserver/README.md)
- Репозитории
  - git
    - [gogs_v1](docker-compose/repositories/git-servers/gogs/gogs_v1/README.md)
- Wiki
  - kiwix
    - [kiwix_server_v1](docker-compose/wiki/kiwix/kiwix_server_v1/docker-compose.yml)
- Автоматизация
  - n8n
    - [n8n_v1](docker-compose/automation/n8n/n8n_v1/README.md)
