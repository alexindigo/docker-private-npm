# alexindigo/private-npm
FROM  alexindigo/npm-registry-couchapp
MAINTAINER Alex Indigo <iam@alexindigo.com>

# Install npm-registry proxy
RUN npm install -g kappa

# Proxy config
RUN echo '\
{\n\
  "servers": [{"host": "localhost", "port": 80}],\n\
  "plugins": {\n\
    "kappa": {\n\
      "vhost": "localhost",\n\
      "paths": [ "http://localhost:5984/registry/_design/app/_rewrite/", "https://registry.npmjs.org/" ]\n\
    }\n\
  }\n\
}\n\
' > /usr/local/etc/kappa.json

EXPOSE 80

# Start couch app and kappa by default
CMD /etc/init.d/couchdb start && kappa -c /usr/local/etc/kappa.json
