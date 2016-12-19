#!/bin/sh

wget -qO- https://get.docker.com/ | sh
docker pull valda/lxgeoip
docker run -d -p 5000:5000 valda/lxgeoip

echo '#!/bin/sh -e' > /etc/rc.local
echo 'docker pull valda/lxgeoip' >> /etc/rc.local
echo 'docker run -d -p 5000:5000 valda/lxgeoip' >> /etc/rc.local
echo 'exit 0' >> /etc/rc.local
