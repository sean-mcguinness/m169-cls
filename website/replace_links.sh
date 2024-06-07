#!/bin/bash

# IP-Adresse des Hosts erhalten
export HOSTIP=$(hostname -I | cut -d " " -f 1)
echo $HOSTIP
envsubst < /usr/share/nginx/html/index.html | tee /usr/share/nginx/html/index.html
	
nginx -g 'daemon off;'
