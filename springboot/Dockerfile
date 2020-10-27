FROM openjdk:11-jdk

EXPOSE 8080

WORKDIR /root

ARG PJTDIR='/root/Pictionarizer/pictionarizerapi'
ARG GITCLONE='git clone https://github.com/Shinichi1125/Pictionarizer.git'

RUN ${GITCLONE} && \
    cd ${PJTDIR} && \
    chmod +x mvnw && \
    ./mvnw clean install -DskipTests

ENTRYPOINT ["java", "-jar", "/root/Pictionarizer/pictionarizerapi/target/ROOT.jar"]
