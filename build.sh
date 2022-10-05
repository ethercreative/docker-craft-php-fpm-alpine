docker build -t ethercreative/craft-php-fpm-alpine:mysql_php8 .;
docker push ethercreative/craft-php-fpm-alpine:mysql_php8;

docker build --build-arg WITH_XML=true -t ethercreative/craft-php-fpm-alpine:mysql-xml_php8 .;
docker push ethercreative/craft-php-fpm-alpine:mysql-xml_php8;
