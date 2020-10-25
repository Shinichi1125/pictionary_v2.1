FROM openjdk:11-jdk

WORKDIR /root

ARG PJTDIR='/root/Pictionarizer/pictionarizerapi'
ARG MAVEN_VERSION=3.6.3
ARG MOUNTDIR='/root/volume'
ARG TMPDIR='/opt/apache-maven.tar.gz'
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries
ARG GITCLONE='git clone -b test https://github.com/tuimac/Pictionarizer.git'

ADD auto-copy.sh /root/auto-copy.sh 

RUN mkdir ${MOUNTDIR} /usr/share/maven && \
    ${GITCLONE} && \
    curl -L ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz -o ${TMPDIR} 
    
RUN tar -xzf ${TMPDIR} -C /usr/share/maven --strip-components=1 && \
    rm -f ${TMPDIR} && \
    ln -s /usr/share/maven/bin/mvn /usr/bin/mvn && \
    chmod +x ${PJTDIR}/mvnw && \
    chmod +x /root/auto-copy.sh

RUN cd ${PJTDIR} && \
    ./mvnw compile war:war -Dmaven.test.failure.ignore=true

ENTRYPOINT /root/auto-copy.sh
