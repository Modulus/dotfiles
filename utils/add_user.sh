#!/bin/bash
# set a password for user. if we are going to use key, leave it
#PASSWORD=supersecret
# create linux group 'ansible'
groupadd -g 50005 ansible
# create linux user 'ansible'
useradd -u 50005 --gid ansible -m -c "Configuration Management" ansible
# set password without being promted
#echo "ansible:${PASSWORD}" | chpasswd
# 'ansible' user is granted all privileges as sudo and no sudo password
echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/ansible
mkdir /home/ansible/.ssh
chown ansible:ansible !$
chmod 700 !$
cat >> /home/ansible/.ssh/authorized_keys <<EOF
SOME RANDOMSSH_KEY
EOF
chmod 0600 /home/ansible/.ssh/authorized_keys
chown ansible:ansible !$ 
