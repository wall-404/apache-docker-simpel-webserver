FROM ubuntu:20.04

RUN apt-get update && apt-get install -y nginx

# Hinzufügen von "hello world" Index.html
# RUN echo '<h1>Hello World!</h1>' > /var/www/html/index.html

# port
Expose 80

COPY ./html/* /var/www/html

CMD ["nginx", "-g", "daemon off;"]
