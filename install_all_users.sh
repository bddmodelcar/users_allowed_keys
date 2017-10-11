#!/bin/bash
for dir in */ ; do
USER=${dir::-1}
./install_users.sh $USER
usermod -aG docker $USER
done

# Always sudo users
usermod -aG sudo sauhaarda
usermod -aG sudo sascha
usermod -aG sudo karlzipser

host=`hostname`
if [ $host == 'bdd3' ]; then # bdd3 sudo users
    usermod -aG sudo bala
fi
if [ $host == 'bdd4' ]; then # bdd4 sudo users
    usermod -aG sudo aga
fi
if [ $host == 'bdd5' ]; then # bdd4 sudo users
    usermod -aG sudo ehou
fi
if [ $host == 'bdd6' ]; then # bdd4 sudo users
    usermod -aG sudo danqing0703
    usermod -aG sudo yexia
fi
