#!/bin/sh

sudo -s 'echo "10.10.23.23      bustickerdev" >> /etc/hosts'
dscacheutil -flushcache

sudo gem install librarian-chef
librarian-chef install

vagrant plugin install vagrant-vbguest
vagrant up

