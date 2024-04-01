# https://dashboard.render.com/

# using ubuntu v22.04 as base image
FROM ubuntu:22.04

# install shellinabox
RUN apt update && \
    apt install -y shellinabox && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set root user and password
RUN echo "root:root" | chpasswd

# export port number 22
EXPOSE 22

# start shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
#CMD ["/usr/bin/shellinaboxd"]
