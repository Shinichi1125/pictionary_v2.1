# You can pick any OS. But this time, I choose Alpine Linux.
FROM alpine:latest

# Change workplace directory inside of docker space.
WORKDIR /root
ARG PJTDIR='/root/Pictionarizer/pictionarizer-ui'
ARG GITCLONE='git clone -b test https://github.com/tuimac/Pictionarizer.git'

# This script deploy files under pictionary build directory to OS mounted directory.
# Because when you run docker-compose and mount target directory, files under that directory are deleted.
# Then that directory is mounted by nginx container to refer to index.html, need to keep copy built files to /tmp.
ADD init.sh /root/init.sh
ADD init.sql /opt/init.sql

# Explanation of each line within RUN section.
# Line1. Install some modules to build react application.
# Line2. Clone application from repository.
# Line3. Change current directory to react application project directory for npm command.
# Line4. Install react packages without checking vulnerabilities(--no-audit).
# Line5. Build react tsx files to native files(.js, .css, .html)
# Line6. Move native file to directory is mounted by OS to be refered from Nginx.
RUN apk add nodejs npm git bash mysql-client && \
    ${GITCLONE} && \
    cd ${PJTDIR}
    #npm install --no-audit && \
    #npm run build

# Execute init.sh when docker container just start.
ENTRYPOINT /root/init.sh
