FROM node:16.5
RUN npm install pm2 -g
RUN git clone https://github.com/alacrityio/hyperion-history-api.git
WORKDIR /hyperion-history-api
RUN npm install --production
EXPOSE 7001