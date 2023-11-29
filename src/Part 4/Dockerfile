FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY hello.c /
COPY start.sh /

RUN apt-get update &&  \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \ 
    gcc hello.c -o hello -l fcgi && \
    chmod +x /start.sh

ENTRYPOINT ["./start.sh"]
