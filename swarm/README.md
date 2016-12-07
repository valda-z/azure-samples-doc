# SWARM

## Swarm cluster with web app
- Create swarm cluster - "Azure Container Service"
- 1 master, 3 nodes
- Connect to swarm master (13.81.71.99)
	- `ssh valda@13.81.71.99 -p 2200`
		- `export DOCKER_HOST=:2375`
		- `docker info`
			- Show configuration of swarm ...
		- `docker ps`
	- Run web server on one node
		- docker run -d -p 8080:80 dockercloud/hello-world
	- Go to web browser and see http://ip-address-of-load-balancer-agent:8080

## Install docker-compose
- Install docker-compose
		curl -L https://github.com/docker/compose/releases/download/1.8.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
	- `chmod +x /usr/local/bin/docker-compose`

## Swarm cluster with AZURE load balancer:
- Run haloadbalancer
		example of docker-compose.yml running in linux:
		version: '2'
		services:
		  web:
		    image: dockercloud/hello-world
		    ports:
		      - 80:80
- `docker-compose up -d`
- `docker-compose scale web=3`
- Go to web browser and see http://ip-address-of-load-balancer-agent

## Swarm cluster with haproxy load balancer:
- Run haloadbalancer
		example of docker-compose.yml running in linux:
		version: '2'
		services:
		  web:
		    image: dockercloud/hello-world
		  lb:
		    image: dockercloud/haproxy
		    links:
		      - web
		    volumes:
		      - /var/run/docker.sock:/var/run/docker.sock
		    ports:
		      - 80:80
- `docker-compose up -d`
- `docker-compose scale web=9`

