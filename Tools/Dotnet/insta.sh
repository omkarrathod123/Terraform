#!/bin/bash

sudo apt update -y
sudo apt install dotnet-sdk-10.0 -y
sudo dotnet --list-sdks
sudo dotnet --list-runtimes
sudo apt-get update -y