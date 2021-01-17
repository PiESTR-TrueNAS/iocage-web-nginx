#!/bin/sh


# ===== Start
service nginx stop


# ===== Prepare nginx to serve
NGINX_CONFIG_ORIGINAL="/usr/local/etc/nginx/nginx.conf"
NGINX_CONFIG_CUSTOM="/mnt/nginx/nginx.conf"
if [ -f "${NGINX_CONFIG_CUSTOM}" ]; then
  if [ -f "${NGINX_CONFIG_ORIGINAL}.orig" ]; then
    cp -f "${NGINX_CONFIG_CUSTOM}" "${NGINX_CONFIG_ORIGINAL}"
  else
    cp "${NGINX_CONFIG_ORIGINAL}" "${NGINX_CONFIG_ORIGINAL}.orig"
    cp "${NGINX_CONFIG_CUSTOM}" "${NGINX_CONFIG_ORIGINAL}"
  fi
fi


# ===== Finish
service nginx start
