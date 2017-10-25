FROM loadimpact/k6:latest

LABEL maintainer="ahoy@m4grio.me"

ENV K6_VERSION 0.17.1

WORKDIR /opt/app

COPY entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
