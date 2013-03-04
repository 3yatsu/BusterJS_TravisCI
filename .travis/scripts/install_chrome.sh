#!/bin/sh

BASEDIR=$(dirname $0)
BASEDIR=$(readlink -f "$BASEDIR/..")

sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update --force-yes
sudo apt-get install -qq --force-yes imagemagick google-chrome-stable
# sudo apt-get install gconf2 # for firefox
# sudo chcon -t usr_t /opt/google/chrome/chrome-sandbox