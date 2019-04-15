#this Dockerfile is for base php-swoole dev env for xiaoma
FROM wenda/centos
LABEL maintainer="wenda <zhaowd@xiaoma.wang>"
ENV WEBROOT=/data/www  \
    PHPREDIS_VERSION=4.0.1 \
    SWOOLE_VERSION=4.3.0

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm \
    && yum -y install \
        vim \
        gcc \
        gcc-c++ \
        gcc-gfortran \
        zlib-devel \
        openssl-devel  \
        nghttp2 \
        git \
        curl \
        wget \
        zip \
        unzip \
        net-tools \
        telnet \
        nginx \
        php72w-cli \
        php72w-common \
        php72w-devel \
        php72w-mysql \
        php72w-gd \
        php72w-mbstring \
        php72w-imap \
        php72w-ldap \
        php72w-odbc \
        php72w-bcmath \
        php72w-pear \
        php72w-xml \
        php72w-fpm \
        php72w-opcache \
        libnghttp2-devel \
        nghttp2 \
    \
    && mkdir -p ${WEBROOT}/code \
    && wget http://pecl.php.net/get/redis-${PHPREDIS_VERSION}.tgz -O /tmp/redis.tar.tgz \
    && pecl install /tmp/redis.tar.tgz \
    && wget https://github.com/swoole/swoole-src/archive/v${SWOOLE_VERSION}.tar.gz -O /tmp/v${SWOOLE_VERSION}.tar.gz \
    && cd  /tmp/ \
    && tar -xf v${SWOOLE_VERSION}.tar.gz \
    && cd swoole-src-${SWOOLE_VERSION} \
    && phpize \
    && ./configure --enable-http2 --enable-openssl \
    && make \
    && make install \
	&& cd /data/www/code \
    \
    && echo 'extension=redis.so' > /etc/php.d/redis.ini \
    && echo 'extension=swoole.so' > /etc/php.d/swoole.ini \
	&& echo -e "\ndate.timezone = Asia/Shanghai" >> /etc/php.ini \
	&& sed -i "s/listen\.allowed_clients/;listen\.allowed_clients/" /etc/php-fpm.d/www.conf \
	&& sed -i 's/listen = 127\.0\.0\.1:9000/listen = 9000/' /etc/php-fpm.d/www.conf \
    \
    && yum clean all  \
    \
    && rm -rf /tmp/swoole-src-${SWOOLE_VERSION} \
    && rm -f /tmp/redis.tar.tgz \
    && rm -f /tmp/v${SWOOLE_VERSION}.tar.gz \
    && rm -rf /var/cache/yum/*

EXPOSE 9501 80 9000

CMD ["/usr/sbin/init"]
