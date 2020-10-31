# You can pick any OS. But this time, I choose Alpine Linux.
FROM alpine:latest

EXPOSE 3000

# Change workplace directory inside of docker space.
WORKDIR /root
ARG PJTDIR='/root/Pictionarizer/pictionarizer-ui'
ARG GITCLONE='git clone https://github.com/Shinichi1125/Pictionarizer.git'

ADD init.sh /root/init.sh

# Explanation of each line within RUN section.
# Line1. Install some modules to build react application.
# Line2. Clone application from repository.
# Line3. Change current directory to react application project directory for npm command.
# Line4. Install react packages without checking vulnerabilities(--no-audit).
# Line5. Build react tsx files to native files(.js, .css, .html)
# Line6. Move native file to directory is mounted by OS to be refered from Nginx.
RUN apk add nodejs npm git bash && \
    ${GITCLONE}

# Execute init.sh when docker container just start.
#ENTRYPOINT /root/init.sh
