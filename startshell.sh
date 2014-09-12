echo "Criando group docker com gid=$GID"
groupadd -g $GID docker
usermod -a -G docker user
if [ -z $USERPWD ]
then
  echo "User default password in use"
else
  echo "Changing user password"
  echo $USERPWD | passwd user --stdin
fi
# Este comando sempre entra como user (nao tem login)
shellinaboxd --no-beep -t --service "/:user:users:/home/user:/bin/bash"

# Este tem login
#shellinaboxd --no-beep -t -s "/:LOGIN"

