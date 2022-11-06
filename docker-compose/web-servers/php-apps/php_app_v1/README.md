# php_app v1

## Описание

Nginx + PHP

## Порты

- 8850

## Структура

```
├── logs
├── nginx
│   ├── conf.d
│   │   ├── default.conf
│   │   ├── fastcgi_params
│   │   ├── settings.conf
│   │   └── vhost.conf
│   ├── Dockerfile
│   └── logs
│       ├── access-ds.log
│       ├── access.log
│       ├── error-ds.log
│       ├── error.log
│       ├── front.access.log
│       └── front.error.log
└── php-workspace
    ├── Dockerfile
    └── logs
        ├── log1
        └── log2
```