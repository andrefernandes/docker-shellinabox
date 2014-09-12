ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
# para ter acesso ao Docker no host
GID=$(getent group docker | cut -d: -f3)
SIAPORT=${SIAPORT:-80}
USERPWD=
echo "Will use $SIAPORT port"

docker run --rm -t -i -p $SIAPORT:4200 \
   -v /var/run/docker.sock:/var/run/docker.sock \
   -v /usr/bin/docker:/usr/bin/docker \
   -e GID=$GID \
   -e USERPWD=$USERPWD \
   andrefernandes/docker-shellinabox:latest $ENVBASH ${@:2}

