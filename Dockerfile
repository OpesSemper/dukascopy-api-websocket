# FROM ismailfer/dukascopy-api:latest

# ENV USER=username
# ENV PWD=password

# ENTRYPOINT ["java","-jar","dukascopy-api-websocket-1.0.war","--dukascopy.credential-username=$USER", "--dukascopy.credential-password=$PWD"]

FROM amazoncorretto:25-alpine-jdk
EXPOSE 7080
EXPOSE 7081

ENV USER=username
ENV PWD=password
ARG JAR_FILE=target/dukascopy-api-websocket-1.0.war
ADD ${JAR_FILE} dukascopy-api-websocket.war

# Copy entrypoint script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# ENTRYPOINT ["java","-jar","dukascopy-api-websocket.war","--dukascopy.credential-username=DEMO2Kgodv", "--dukascopy.credential-password=Kgodv"]
ENTRYPOINT ["entrypoint.sh"]

# DEMO2Kgodv Kgodv
