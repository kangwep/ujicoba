FROM alpine:3.20

WORKDIR /app

COPY app/index.sh /app/index.sh

RUN chmod +x /app/index.sh

CMD ["/app/index.sh"]
