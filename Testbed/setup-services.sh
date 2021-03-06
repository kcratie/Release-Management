#!/bin/bash

apt-get update
apt-get install -y openjdk-8-jdk
wget https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4.5.2_all.deb \
  -O openfire_4.5.2_all.deb
apt-get install -y ./openfire_4.5.2_all.deb
git clone https://github.com/ipop-project/Network-Visualizer.git
cd Network-Visualizer/setup
./setup.sh
chown -R $USER /users/$USER/
