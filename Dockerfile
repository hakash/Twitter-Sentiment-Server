FROM java:8
MAINTAINER Morten Olsrud
VOLUME /tmp
ADD twittersentiment_server.jar server.jar
RUN bash -c 'touch /server.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/server.jar"]