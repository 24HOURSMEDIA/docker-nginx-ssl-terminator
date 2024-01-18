#!/usr/bin/env sh
set -e
set -o pipefail

echo "*********************************************"
echo "Tango Nginx template parsing"
echo "*********************************************"

tango parse:dir /config-templates/nginx.conf.d /etc/nginx/conf.d



