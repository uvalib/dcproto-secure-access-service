if [ -z "$DOCKER_HOST" ]; then
   echo "ERROR: no DOCKER_HOST defined"
   exit 1
fi

# set the definitions
INSTANCE=docker-nginx
NAMESPACE=uvadave

docker run -ti -p 8380:80 $NAMESPACE/$INSTANCE /bin/bash -l
