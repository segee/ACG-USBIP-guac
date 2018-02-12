#!/bin/bash
sudo userdel -r tunnel >/dev/null
sudo useradd --create-home  --home-dir /home/tunnel  --shell /bin/cat tunnel

sudo mkdir /home/tunnel/.ssh
# copy an appropriate authorized_keys file
# see https://stackoverflow.com/questions/8021/allow-user-to-set-up-an-ssh-tunnel-but-nothing-else

sudo chown tunnel ~tunnel/.ssh
sudo cp /usr/local/bin/ACG-USBIP-guac/authorized_keys ~tunnel/.ssh/.
sudo chown tunnel ~tunnel/.ssh/authorized_keys
sudo chmod 700 ~tunnel/.ssh
sudo chmod 700 ~tunnel/.ssh/authorized_keys
printf "\nGatewayPorts yes\n" |sudo tee -a /etc/ssh/sshd_config
