FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends git build-essential libsodium-dev curl npm

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - && apt-get install nodejs -y

WORKDIR /app

COPY . /app

RUN npm update && npm install

CMD ["npm", "start"]
