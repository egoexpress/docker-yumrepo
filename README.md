docker-yumrepo
==============

This Docker image serves a YUM repository using nginx.

## Prerequisites

This docker setup requires a properly setup nginx reverse proxy setup as provided by [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy). 

## Usage

Get the _egoexpress/yumrepo_ container from [Docker Hub](https://hub.docker.com/r/egoexpress/yumrepo) or build it yourself using _docker build_. Afterwards, set _DOCKER_YUMREPO_HOSTNAME_ to the hostname of your choice (that is reverse proxied by nginx-proxy) and start the container instances using _docker-compose_.
    
    docker build -t egoexpress/yumrepo .
    export DOCKER_YUMREPO_HOSTNAME=yumrepo.example.com
    docker-compose up -d
