#!/usr/bin/with-contenv sh
#shellcheck shell=sh

DOWNLOAD_DIR=${DOWNLOAD_DIR:-/downloads}

echo "Fixing perms..."
mkdir -p /data/rtorrent \
  /data/rutorrent \
  /downloads \
  /passwd \
  /etc/nginx/conf.d \
  /etc/rtorrent \
  /var/cache/nginx \
  /var/lib/nginx \
  /var/run/nginx \
  /var/run/php-fpm \
  /var/run/rtorrent
chown rtorrent. \
  /data \
  /data/rtorrent \
  /data/rutorrent \
  /downloads \
  "${DOWNLOAD_DIR}" \
  "${DOWNLOAD_DIR}/files" \
  "${DOWNLOAD_DIR}/watch"
chown -R rtorrent. \
  /etc/rtorrent \
  /passwd \
  /tpls \
  /var/cache/nginx \
  /var/lib/nginx \
  /var/log/php7 \
  /var/run/nginx \
  /var/run/php-fpm \
  /var/run/rtorrent
