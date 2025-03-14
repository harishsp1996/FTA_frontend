FROM node:16.20.0

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install --force

RUN npm install -g @angular/cli

RUN export HOST=0.0.0.0 \
    && export PORT=80

EXPOSE 80

CMD ["ng", "serve", "--host", "0.0.0.0"]
