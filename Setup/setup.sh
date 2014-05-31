#!/bin/sh

sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make vim git

git clone https://github.com/joyent/node.git Node
cd Node
git checkout --track origin/v0.10.26-release
./configure
make
sudo make install
node --version
cd ..
hash -r

sudo npm -g install express
sudo npm -g install express-generator
sudo npm -g install node-inspector
sudo npm -g install nodemon
sudo npm -g install forever

