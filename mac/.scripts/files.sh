#!/bin/bash
#http://blog.mact.me/2014/10/22/yosemite-upgrade-changes-open-file-limit
#echo kern.maxfiles=65536 | sudo tee -a /etc/sysctl.conf
#echo kern.maxfilesperproc=65536 | sudo tee -a /etc/sysctl.conf
#sudo sysctl -w kern.maxfiles=65536
#sudo sysctl -w kern.maxfilesperproc=65536
#ulimit -n 65536 65536



echo kern.maxfiles=524288 | sudo tee -a /etc/sysctl.conf
echo kern.maxfilesperproc=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -w kern.maxfiles=524288
sudo sysctl -w kern.maxfilesperproc=524288
ulimit -n 524288
