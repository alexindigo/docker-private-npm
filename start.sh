#!/bin/bash
REGISTRY="http://${COUCHDB_PORT_5984_TCP_ADDR}:${COUCHDB_PORT_5984_TCP_PORT}/registry"

# make config up to date
if [ -f "/www/kappa.json" ]
then
  sed -i'' 's%REGISTRY%'${REGISTRY}'%' /www/kappa.json
fi

# Start kappa
kappa -c /www/kappa.json
