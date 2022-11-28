# FROM node:16.5
# RUN npm install pm2 -g
# RUN git clone https://github.com/alacrityio/hyperion-history-api.git
# WORKDIR /hyperion-history-api
# RUN npm install --production
# EXPOSE 7001

FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get install -y build-essential git curl netcat

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs && npm install pm2 -g && git clone https://github.com/alacrityio/hyperion-history-api.git

RUN useradd -m -s /bin/bash hyperion && chown -R hyperion:hyperion /hyperion-history-api
USER hyperion
WORKDIR /hyperion-history-api

RUN npm install --production

EXPOSE 7001

