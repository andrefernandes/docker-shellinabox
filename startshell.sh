echo "Criando group docker com gid=$GID"
groupadd -g $GID docker
usermod -a -G docker user

# Este comando sempre entra como user (nao tem login)
#shellinaboxd --no-beep -t -v --service "/:user:users:/home/user:/bin/bash"

# Este tem login
shellinaboxd --no-beep -t -v -s "/:LOGIN"

