FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wkhtmltopdf \
    inotify-tools

WORKDIR /app

COPY watch.sh /app/watch.sh
RUN chmod +x /app/watch.sh

CMD ["/app/watch.sh"]