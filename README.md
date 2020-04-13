# Angular CLI Docker Image

Start the CLI
`docker run --rm -it aurelianscarlat/angular-cli /bin/bash`

Create new project
`docker run --rm -it -v $PWD/app:/usr/src/app aurelianscarlat/angular-cli ng new application`

Serve
`docker run --rm -it -v $PWD:/usr/src/app aurelianscarlat/angular-cli ng serve`

You can also use it in a `docker-compose.yml`

`version: '3.0'

services:
  angular:
    image: aurelianscarlat/angular-cli
    volumes:
      - .:/usr/src/app
    expose:
      - 4200
    restart: on-failure
    command: ["ng", "serve"]
`