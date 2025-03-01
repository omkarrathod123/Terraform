#!/bin/bash

sudo apt-get update -y
sudo apt install nginx -y
sudo systemctl start nginx

sudo cd /etc/www/html/
sudo echo "This is test" > index.html