#!/bin/sh

sudo apt update
sudo apt upgrade
sudo apt install r-base
sudo apt install libssl-dev libfontconfig1-dev libcurl4-openssl-dev libxml2-dev
sudo apt install libharfbuzz-dev libfribidi-dev
sudo apt install libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
cat install.R
