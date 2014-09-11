# para ter acesso ao Docker no host
GID=$(getent group docker | cut -d: -f3)
docker run --name sia -p 4200:4200 --rm -t -i \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker \
    -e GID=$GID \
    andrefernandes/docker-shellinabox:latest

