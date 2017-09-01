#!/bin/bash
for dir in */ ; do
USER=${dir::-1}
./install_users.sh $USER
usermod -aG docker $USER
done
