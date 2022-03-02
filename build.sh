docker build --build-arg WITH_MYSQL=true -t ethercreative/craft-php-fpm-alpine:mysql_php8_0 .;
docker push ethercreative/craft-php-fpm-alpine:mysql_php8_0;

docker build --build-arg WITH_MYSQL=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:mysql-xml_php8_0 .;
docker push ethercreative/craft-php-fpm-alpine:mysql-xml_php8_0;

docker build --build-arg WITH_POSTGRES=true -t ethercreative/craft-php-fpm-alpine:postgres_php8_0 .;
docker push ethercreative/craft-php-fpm-alpine:postgres_php8_0;

docker build --build-arg WITH_POSTGRES=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:postgres-xml_php8_0 .;
docker push ethercreative/craft-php-fpm-alpine:postgres-xml_php8_0;
