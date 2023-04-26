FROM debian:11.6-slim

MAINTAINER Romanos Trechlis <r.trechlis@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
 curl jq git build-essential zip unzip ca-certificates wget

RUN wget https://github.com/gerald1248/validate-yaml/releases/download/v0.2.3/validate-yaml-linux-amd64.zip
RUN unzip validate-yaml-linux-amd64.zip

ADD entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]