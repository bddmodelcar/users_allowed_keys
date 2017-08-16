for dir in */ ; do
USER=${dir::-1}
./install_users.sh $USER
done
