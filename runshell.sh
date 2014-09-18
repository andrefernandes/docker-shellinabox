# para ter acesso ao Docker no host
GID=$(getent group docker | cut -d: -f3)
SIAPORT=${SIAPORT:-4200}
USERPWD=
echo "Will use $SIAPORT port"
docker run --name sia -p $SIAPORT:4200 --rm -t -i \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker \
    -e GID=$GID \
    -e USERPWD=$USERPWD \
    -e VIRTUAL_HOST=shell.localdomain \
    andrefernandes/docker-shellinabox:latest

