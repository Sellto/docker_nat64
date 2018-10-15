apk update
apk add gcc
apk add make
apk add musl-dev
apk add linux-headers
apk add wget
apk add git
mkdir -p /build
cd /build
wget http://www.litech.org/tayga/tayga-0.9.2.tar.bz2
git clone https://github.com/Sellto/netinfo
tar -jxf tayga-0.9.2.tar.bz2
cd /build/tayga-0.9.2
./configure
make
make install
mkdir -p /var/db/tayga
cd /build/netinfo
make all
cp /build/netinfo/netinfo /usr/local/bin/netinfo
rm -rf /build
apk del gcc
apk del musl-dev
apk del linux-headers
apk del make
apk add wget
apk del git
