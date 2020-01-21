# docker-craft-php-fpm-alpine

## Build arguments

- `WITH_POSTGRES`
- `WITH_MYSQL`
- `WITH_XML`
- `WITH_XDEBUG`

### Compose

```
build:
  context: https://github.com/ethercreative/docker-craft-php-fpm-alpine.git
  args:
    - WITH_POSTGRES=1
```
