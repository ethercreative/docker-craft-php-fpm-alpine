# docker-craft-php-fpm-alpine

## Build arguments

- `WITH_POSTGRES`
- `WITH_MYSQL`
- `WITH_XML`
- `WITH_XDEBUG`

## 

### Compose

```
build:
  context: https://github.com/ethercreative/docker-craft-php-fpm-alpine.git
  args:
    - WITH_POSTGRES=1
```

## Build

### PostgreSQL

```
docker build --build-arg WITH_POSTGRES=true -t ethercreative/craft-php-fpm-alpine:postgres .
docker push ethercreative/craft-php-fpm-alpine:postgres
```

#### With XML

```
docker build --build-arg WITH_POSTGRES=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:postgres-xml .
docker push ethercreative/craft-php-fpm-alpine:postgres-xml
```

### MySQL

```
docker build --build-arg WITH_MYSQL=true -t ethercreative/craft-php-fpm-alpine:mysql .
docker push ethercreative/craft-php-fpm-alpine:mysql
```

#### With XML

```
docker build --build-arg WITH_MYSQL=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:mysql .
docker push ethercreative/craft-php-fpm-alpine:mysql-xml
```
