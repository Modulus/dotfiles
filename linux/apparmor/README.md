# Prereq
sudo app install apparmor-profiles apparmor-utils

# Enforce policy
sudo aa-enforce /etc/apparmor.d/*
