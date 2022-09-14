zerotier

Networks ID: 17d709436c2aa99f

Managed Routes: 192.168.192.0/24

Name: OMV 17d7_192.168.192.10

E8820s  192.168.192.1

------------------------------

docker

https://hub.docker.com/r/zerotier/zerotier/tags

docker pull zerotier/zerotier:1.10.1


docker run --name myzerotier --rm --cap-add NET_ADMIN --device /dev/net/tun zerotier/zerotier:latest
