FROM nginx:alpine

RUN apk add --no-cache gettext

COPY app/index.html.template /usr/share/nginx/html/index.html.template
COPY app/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
