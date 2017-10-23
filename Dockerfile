FROM node:8-alpine

LABEL maintainer Alfredo Palhares <alfredo@palhares.me>



RUN apk update \
  && apk add git wget ca-certificates openssl \
  && git clone https://github.com/dthree/mailit.git /srv/mailit \
  && wget --quiet https://github.com/kelseyhightower/confd/releases/download/v0.14.0/confd-0.14.0-linux-amd64 -O /usr/local/bin/confd \
  && chmod a+x /usr/local/bin/confd

WORKDIR /srv/mailit
RUN npm install

COPY mailit_config_json.tmpl /etc/confd/templates/mailit_config.tmpl
COPY confd_mailit.toml /etc/confd/conf.d/mailit.toml
COPY entrypoint.sh /srv/entrypoint.sh
RUN chmod a+x /srv/entrypoint.sh

ENTRYPOINT [ "/srv/entrypoint.sh" ]

CMD [ "./bin/index.js", "--config /srv/mailit/config.json" ]


