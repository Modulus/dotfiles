#!/bin/bash
sudo cp *.service /etc/systemd/system

systemctl enable stopbt startbt
