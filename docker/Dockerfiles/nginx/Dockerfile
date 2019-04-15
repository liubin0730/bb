FROM centos
WORKDIR /root
ADD http://nginx.org/download/nginx-1.14.2.tar.gz .
RUN tar -xf nginx-1.14.2.tar.gz \
    && cd nginx-1.14.2 \
    && yum -y install pcre pcre-devel gcc gcc-c++ autoconf make zlib zlib-devel \
    && ./configure \
    && make \
    && make install \
    && yum clean all  \
    && rm -rf /var/cache/yum/*
CMD /usr/local/nginx/sbin/nginx -g "daemon off;"
