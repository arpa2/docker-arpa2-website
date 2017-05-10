FROM arpa2:base

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y nginx

EXPOSE 80:80

VOLUME ["/var/www"]

ENV HOME /var/www

# CMD ["bash"]
CMD nginx -g 'daemon off;'
