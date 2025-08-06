FROM ismailfer/dukascopy-api:latest

ENV USER=username
ENV PWD=password

ENTRYPOINT ["java","-jar","dukascopy-api-websocket-1.0.war","--dukascopy.credential-username=$USER", "--dukascopy.credential-password=$PWD"]
