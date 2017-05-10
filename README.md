# Easy entrance ARPA2 Website

> *This builds a Docker image for our webserver.*

**This is not really our web site set yet!**
We are working our way upwards to using Docker for our infrastructure,
and this is what we write while learning.

Build our website as follows:

    git clone https://github.com/arpa2/docker-arpa2-website
    docker build -t arpa2:website docker-arpa2-website

Then run it with

    mkdir -p /tmp/html
    echo '<h1>Hello</h1><p>World...</p>' > /tmp/html/index.html
    docker run \
               -p 127.0.0.1:8080:80 \
               -v /tmp:/var/www \
               arpa2:website

This exposes the website over `http://localhost:8080`,
showing the contents of `/tmp/html` and, more specifically,
its one-liner index file.

To test/develop this image, please use

    docker run -it \
               -p 127.0.0.1:8080:80 \
               -v /tmp:/var/www \
               arpa2:website \
               bash

This will run `bash` instead of the normal `nginx` command.  You can
invoke `nginx` manually inside the container, if you like.

