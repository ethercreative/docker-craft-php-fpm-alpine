docker build --build-arg WITH_POSTGRES=true -t ethercreative/craft-php-fpm-alpine:postgres .;
docker push ethercreative/craft-php-fpm-alpine:postgres;

docker build --build-arg WITH_POSTGRES=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:postgres-xml .;
docker push ethercreative/craft-php-fpm-alpine:postgres-xml;

docker build --build-arg WITH_MYSQL=true -t ethercreative/craft-php-fpm-alpine:mysql .;
docker push ethercreative/craft-php-fpm-alpine:mysql;

docker build --build-arg WITH_MYSQL=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:mysql-xml .;
docker push ethercreative/craft-php-fpm-alpine:mysql-xml;
