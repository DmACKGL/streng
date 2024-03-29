#!/bin/bash
# Compilador Nginx con RTMP
# https://github.com/DmACKGL/streng

# Colores
green=`tput setaf 2`
reset=`tput sgr0`

# Configure
./configure \
	--prefix=/usr \
	--conf-path=/etc/nginx/nginx.conf \
	--error-log-path=/var/log/nginx/error.log \
	--http-log-path=/var/log/nginx/access.log \
	--pid-path=/var/run/nginx.pid \
	--lock-path=/var/lock/nginx.lock \
	--with-http_ssl_module \
	--user=www-data \
	--group=www-data \
	--with-http_v2_module \
	--with-http_stub_status_module \
	--with-http_gzip_static_module \
	--without-mail_pop3_module \
	--without-mail_imap_module \
	--without-mail_smtp_module \
	--add-module=nginx-rtmp-module \
	--with-http_stub_status_module

# Make
make
make install

echo "${green}NGinx Instalado!${reset}"
