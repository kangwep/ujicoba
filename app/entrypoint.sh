#!/bin/sh
set -e

: "${APP_MESSAGE:=HALLO DEFAULT}"

envsubst < /usr/share/nginx/html/index.html.template \
         > /usr/share/nginx/html/index.html

exec nginx -g "daemon off;"
