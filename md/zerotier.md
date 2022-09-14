zerotier

Networks ID: 17d709436c2aa99f

Managed Routes: 192.168.192.0/24

Name: OMV 17d7_192.168.192.10

E8820s  192.168.192.1

------------------------------

docker

https://hub.docker.com/r/bltavares/zerotier/tags

docker pull bltavares/zerotier:1.8.4


--------------------------------

docker run --device=/dev/net/tun \
    --net=host \
    --cap-add=NET_ADMIN \
    --cap-add=SYS_ADMIN \
    -v /var/lib/zerotier-one:/var/lib/zerotier-one \
    -n zerotier-one \
    -d bltavares/zerotier

----------------------------------

https://zhuanlan.zhihu.com/p/386597193
【N1小钢炮·一】安装docker版zerotier

***

docker run --device=/dev/net/tun \
--name zerotier-one \
--net=host \
--restart=always \
--cap-add=NET_ADMIN \
--cap-add=SYS_ADMIN \
-v /var/lib/zerotier-one:/var/lib/zerotier-one \
bltavares/zerotier:latest


加入zerotier网络

docker exec zerotier-one zerotier-cli join [网络ID]



