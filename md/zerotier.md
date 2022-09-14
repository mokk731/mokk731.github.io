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



docker run -d \
 --name=zerotier-one \
 --device=/dev/net/tun \
 --net=host \
 --cap-add=NET_ADMIN \
 --cap-add=SYS_ADMIN \
 -v /srv/dev-disk-by-uuid-d67261a5-c100-461e-be0c-da12baa203fd/zerotier-one:/var/lib/zerotier-one \
   bltavares/zerotier:1.8.4


加入zerotier网络

docker exec zerotier-one zerotier-cli join 17d709436c2aa99f

显示 200 join ok 即添加成功

zerotier-cli status

zerotier-cli listnetworks


------------------------------------------
https://www.cnblogs.com/sicko/p/10997230.html

bltavares/zerotier:1.6.2-2

docker run \
--name=zerotier-one \
--device=/dev/net/tun \
--net=host \
--cap-add=NET_ADMIN \
--cap-add=SYS_ADMIN \
-d -v /var/lib/zerotier-one:/var/lib/zerotier-one \
--restart unless-stopped \
bltavares/zerotier:1.6.2-2



