FROM node:18

ENV HOME=/home/app

RUN apt-get update && apt-get install -y htop --no-install-recommends

COPY package.json package-lock.json $HOME/node_docker/

WORKDIR $HOME/node_docker

RUN npm install --silent --progress=false

COPY . $HOME/node_docker

CMD ["npm", "start"]
