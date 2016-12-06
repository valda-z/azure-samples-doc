# IaaS, VLAN network, Loadbalancer

## Scenario 1 - VM's, Network, load balancers
- Explain: availability set, SSD/HDD, pricing, scaling
- Steps (tst1 group)
	- Create resource group
	- Create availability set
	- Create VM1, select group, select availability set
	- Create VM2, select group, select same availability set like for VM1
		- Setup VM's
		- Ubuntu 16.04
		- `sudo apt update --yes &sudo apt dist-upgrade --yes`
		- `mkdir www`
		- `cd www`
		- Create there some index.html file ...
			- `<html><head></head><body bgcolor="white" text="blue"><h1>node 01 </h1></body></html>`
		- Docker: `wget -qO- https://get.docker.com/ | sh`
		- Run simple http server:  `docker run -p 8080:8080 -v /home/valda/www:/opt -w /opt -d -t cannin/nodejs-http-server`
		- Add docker starting to rc.local …
		- Test it:  wget -qO- localhost:8080
	- Create load balancer
		- New loadbalancer
		- Create probe for http (8080)
		- Create backend pool, select avail.set, select VM's
		- Create loadbalancing rule
		- Define DNS name for public IP address of loadbalancer
		- Enable http 8080 on VM's network group security
	- Try access http on loadbalancer

## Scenario 2 - VNET to VNET connection
- Create IaaS machine (tst2 group)
	- Linux machine
- Create GW subnets
	- Tst1 RGRP - create additional subnet for gw10.0.1.0
	- Tst2 RGRP - create additional subnet for gw 10.1.1.0
- Create gateways in gw own subnets - be careful, provisioning gets 40 minutes
	- Gateway type "Virtual Network Gateway"
		○ Route based
		○ Define subnet
		○ Define public IP
	- Connect gateways
		○ Shared key: 031a0cdd1744b10f
		○ Connect gw1 to gw2
