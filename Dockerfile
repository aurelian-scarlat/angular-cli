FROM node:14-stretch

WORKDIR /usr/src/app
EXPOSE 4200

RUN npm install -g @angular/cli@^10
