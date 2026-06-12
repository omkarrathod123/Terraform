#!/bin/bash

sudo apt update -y
sudo apt upgrade
sudo apt install maven default-jdk -y
mvn --batch-mode --no-transfer-progress -version
javac -version