#! /bin/bash

DUKAS_USER=$username
DUKAS_PWD=$password

# Create entrypoint from template
envsubst < entrypoint.sh.template > entrypoint.sh

docker build -t dukascopy-data:test .

# Clear
rm -f ./entrypoint.sh