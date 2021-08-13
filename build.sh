docker build --build-arg WITH_POSTGRES=true -t ethercreative/craft-php-fpm-alpine:postgres@8 .;
docker push ethercreative/craft-php-fpm-alpine:postgres@8;

docker build --build-arg WITH_POSTGRES=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:postgres-xml@8 .;
docker push ethercreative/craft-php-fpm-alpine:postgres-xml@8;

docker build --build-arg WITH_MYSQL=true -t ethercreative/craft-php-fpm-alpine:mysql@8 .;
docker push ethercreative/craft-php-fpm-alpine:mysql@8;

docker build --build-arg WITH_MYSQL=true --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:mysql-xml@8 .;
docker push ethercreative/craft-php-fpm-alpine:mysql-xml@8;
