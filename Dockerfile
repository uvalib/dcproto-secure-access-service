# base image
FROM nginx

# Move in necessary assets
COPY data/container_bash_profile /root/.bashrc

# edit for browse capability
RUN sed -i 's/index  index.html index.htm;/autoindex on;/g' /etc/nginx/conf.d/default.conf

# expose public port
EXPOSE 80

#
# end of file
#
