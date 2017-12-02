# Live demo

## Usage

- Clone this repository. `git clone https://github.com/strarsis/wp-core-skip-email-demo`
- Go into this directory. `cd wp-core-skip-email-demo`
- [Docker](https://docs.docker.com/engine/installation/) + [Docker Compose](https://docs.docker.com/compose/install/) have to be installed.
- Start containers using `docker-compose up -d`, 
this will start a MariaDB database container and a WordPress container with this theme mounted as folder into the themes directory of container.
- Run `./setup.sh`, passing host + port of development machine to it - 
to which you will point your browser on later, e.g. `./setup.sh localhost 8080`.
- When setup script has finished, load the site in your browser using the host + port previously specified, e.g. `http://localhost:8080`.
