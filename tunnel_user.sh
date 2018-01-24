!#/bin/bash

sudo useradd  -N --shell /bin/cat tunnel
echo "tunnel:tunnel" |sudo chpasswd

sudo mkdir /home/tunnel/.ssh
# copy an appropriate authorized_keys file
# see https://stackoverflow.com/questions/8021/allow-user-to-set-up-an-ssh-tunnel-but-nothing-else

sudo cp /usr/local/bin/ACG-USBIP-guac/authorized_keys ~tunnel/.ssh/.
