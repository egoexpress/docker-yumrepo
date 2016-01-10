# YUM repository, served by an nginx instance

FROM nginx:latest
MAINTAINER Bjoern Stierand <bjoern-docker@innovention.de>

# install base packages
RUN apt-get update && apt-get install -yq \
    zypper \
    zypper-common \
    createrepo

# clean up when done
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker-entrypoint.sh /docker-entrypoint.sh

VOLUME /usr/share/nginx/html

# expose ports
EXPOSE 80

# create and/or update repository on startup
ENTRYPOINT ["/docker-entrypoint.sh"]
