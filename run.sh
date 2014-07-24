#!/bin/bash
BASEPATH=$(dirname $(perl -MCwd=realpath -e "print realpath '$0'"))

# if extra arguments present run it in interactive mode
# otherwise just run it once
if [ $# -eq 0 ]
then
RUN_MODE=""
else
RUN_MODE="-t -i"
fi

# run container
docker run ${RUN_MODE} --name private_npm -v ${BASEPATH}:/www -p 80:80 --link couchdb:couchdb alexindigo/private-npm "$@"
