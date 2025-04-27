#!/bin/bash

sudo apt-get update -y
sudo apt install nginx -y

sleep 3

sudo systemctl start nginx
cd /var/www/html
echo "this is nginx server" > index.html