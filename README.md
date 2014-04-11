docker-private-npm
==================

Private NPM registry container based on Kappa – a hierarchical npm-registry proxy

## Run

`docker run -t -i -p 80:80 alexindigo/private-npm`

Or run manually with custom config

`docker run -t -i -p 80:80 -v $(pwd):/www alexindigo/private-npm /etc/init.d/couchdb start && kappa -c /www/my_custom_config.json`
