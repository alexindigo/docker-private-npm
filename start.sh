#!/bin/bash
REGISTRY="http://${COUCHDB_PORT_5984_TCP_ADDR}:${COUCHDB_PORT_5984_TCP_PORT}/registry"

# make config up to date
if [ -f "/www/kappa.json" ]
then
  sed 's%REGISTRY%'${REGISTRY}'%' /www/kappa.json > /www/private_npm.json
fi

# Start kappa
kappa -c /www/private_npm.json
