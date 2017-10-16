# base image
FROM kyma/docker-nginx

# Move in necessary assets
COPY data/container_bash_profile /root/.bashrc
COPY files/ /var/www

# port and run command
EXPOSE 80
CMD 'nginx'

#
# end of file
#
