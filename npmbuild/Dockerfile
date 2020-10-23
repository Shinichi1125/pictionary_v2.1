# You can pick any OS. But this time, I choose Centos 8.
FROM centos:latest

# Change workplace directory inside of docker space.
WORKDIR /root

# This script deploy files under pictionary build directory to OS mounted directory.
# Because when you run docker-compose and mount target directory, files under that directory are deleted.
# Then that directory is mounted by nginx container to refer to index.html, need to keep copy built files to /tmp.
ADD auto-copy.sh /root/auto-copy.sh

# Explanation of each line within RUN section.
# Line1. Install some modules to build react application.
# Line2. Clone application from repository.
# Line3. Change current directory to react application project directory for npm command.
# Line4. Install react packages without checking vulnerabilities(--no-audit).
# Line5. Build react tsx files to native files(.js, .css, .html)
# Line6. Move native file to directory is mounted by OS to be refered from Nginx.
RUN yum install -y nodejs npm git tree && \
    git clone https://github.com/Shinichi1125/Pictionarizer.git && \
    cd /root/Pictionarizer/pictionarizer-ui && \
    npm install --no-audit && \
    npm run build

# Execute auto-copy.sh when docker container just start.
ENTRYPOINT /root/auto-copy.sh
