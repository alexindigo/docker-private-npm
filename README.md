docker-private-npm
==================

Private NPM registry container based on [Kappa](https://github.com/krakenjs/kappa) – a hierarchical npm-registry proxy

NPM registry couchapp container, using couchdb `1.6.0`, node `0.10.29` and npm-registry `2.4.3`.

Requires:
- [alexindigo/couchdb](https://registry.hub.docker.com/u/alexindigo/couchdb/) as linked container.

## Install

Init npm-registry couchapp:

```
$ ./run.sh /opt/npmjs/couchdb_init.sh
```

## Run

Start kappa npm proxy server:

```
$ ./run.sh
```
