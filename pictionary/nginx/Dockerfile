# Download newest nginx image from Docker Hub.
FROM nginx:latest

# Open port on docker container.
EXPOSE 80

# Send custom nginx configuration file from OS to docker.
ADD nginx.conf /etc/nginx/nginx.conf

# Start nginx process automatically when run nginx dokcer container.
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
