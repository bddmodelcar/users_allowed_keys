#!/bin/bash
USER=$1
if useradd -m $USER ; then
    echo "$USER:password" | chpasswd
    echo "created new default password of "password" for $USER"
fi

su $USER <<'EOF'
mkdir -p ~/.ssh
chmod 0700 ~/.ssh
#ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa -b 4096 > /dev/null
EOF
cp $USER/.ssh/authorized_keys /home/$USER/.ssh/authorized_keys
chown $USER:$USER /home/$USER/.ssh/authorized_keys
cd $USER
cp -R * .[^.]* /home/$USER/
chsh -s `which bash` $USER
sleep 2

# DEFAULT PASSWORDS AND SUDO USERS
usermod -aG sudo sauhaarda
# echo sauhaarda:password | chpasswd
usermod -aG sudo tpankaj
# echo tpankaj:password | chpasswd
