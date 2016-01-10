#!/bin/bash

# (re-)create repo on startup
cd /usr/share/nginx/html
rm -rf repodata
createrepo .

# start nginx in foreground mode
nginx -g "daemon off;"
