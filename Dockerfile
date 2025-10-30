# FROM ismailfer/dukascopy-api:latest

# ENV USER=username
# ENV PWD=password

# ENTRYPOINT ["java","-jar","dukascopy-api-websocket-1.0.war","--dukascopy.credential-username=$USER", "--dukascopy.credential-password=$PWD"]

FROM openjdk:17-jdk-alpine
EXPOSE 7080
EXPOSE 7081

WORKDIR /

ENV USER=username
ENV PWD=password
ARG JAR_FILE=target/dukascopy-api-websocket-1.0.war
ADD ${JAR_FILE} dukascopy-api-websocket.war

COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["java","-jar","dukascopy-api-websocket.war","--dukascopy.credential-username=$USER", "--dukascopy.credential-password=$PWD"]
ENTRYPOINT ["/entrypoint.sh"]

# DEMO2Kgodv Kgodv
