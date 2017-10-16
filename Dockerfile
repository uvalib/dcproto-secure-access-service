# base image
FROM nginx

# Move in necessary assets
COPY data/container_bash_profile /root/.bashrc
COPY files/ /usr/share/nginx/html

EXPOSE 80

#
# end of file
#
