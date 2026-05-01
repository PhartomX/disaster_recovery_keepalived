#!/bin/bash

ss -tln | grep -q :80
PORT=$?

if [ -f /var/www/html/index.nginx-debian.html ] && [ $PORT -eq 0 ]; then
	exit 0
else
	exit 1
fi
