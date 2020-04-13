# Angular CLI Docker Image

### Start the CLI  
`docker run --rm -it aurelianscarlat/angular-cli /bin/bash`

### Create new project  
`docker run --rm -it -v ${PWD}:/usr/src/app aurelianscarlat/angular-cli ng new <name>`

It will create a folder `<name>` on the host and install angular; in the container it will be installed in `/usr/src/app/<name>` but you don't need to care right now

### Serve
`docker run --rm -it -v ${PWD}:/usr/src/app -p 4200:4200 aurelianscarlat/angular-cli ng serve --host 0.0.0.0`

You need to run it in the `<name>` folder; after that, you can go to `http://localhost:4200/` and see your application

### docker-compose
You can also use it in a `docker-compose.yml`

```
version: '3.0'

services:
  angular:
    image: aurelianscarlat/angular-cli
    volumes:
      - .:/usr/src/app
    expose:
      - 4200
    restart: on-failure
    command: ["ng", "serve", "--host", "0.0.0.0"]
```

and then just `docker-compose up`
