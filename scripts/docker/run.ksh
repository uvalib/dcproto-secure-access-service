if [ -z "$DOCKER_HOST" ]; then
   echo "ERROR: no DOCKER_HOST defined"
   exit 1
fi

# set the definitions
INSTANCE=docker-nginx
NAMESPACE=uvadave

# volume mapping
HOST_FS=/lib_content102/htrc-dc-secure/wav
CONTAINER_FS=/usr/share/nginx/html
VOLUME_MAP="-v $HOST_FS:$CONTAINER_FS"

# stop the running instance
docker stop $INSTANCE

# remove the instance
docker rm $INSTANCE

# remove the previously tagged version
docker rmi $NAMESPACE/$INSTANCE:current  

# tag the latest as the current
docker tag $NAMESPACE/$INSTANCE:latest $NAMESPACE/$INSTANCE:current

# and run it
docker run -p 8380:80 $VOLUME_MAP --log-opt tag=$INSTANCE --name $INSTANCE $NAMESPACE/$INSTANCE:latest

# return status
exit $?
