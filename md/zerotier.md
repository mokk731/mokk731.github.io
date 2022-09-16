zerotier

Networks ID: 17d709436c2aa99f

Managed Routes: 192.168.192.0/24

Name: OMV 17d7_192.168.192.10

E8820s  192.168.192.1

------------------------------

docker

https://hub.docker.com/r/bltavares/zerotier/tags

docker pull bltavares/zerotier:1.6.2-2


--------------------------------

docker run --name myzerotier --rm --cap-add NET_ADMIN --device /dev/net/tun zerotier/zerotier:latest 

abcdefdeadbeef00


docker run \
  -d \
  --restart unless-stopped \
  --name zerotier-one \
  --device /dev/net/tun \
  --net host \
  --cap-add NET_ADMIN \
  --cap-add SYS_ADMIN \
  -v /var/lib/zerotier-one:/var/lib/zerotier-one \
  henrist/zerotier-one




docker run --device=/dev/net/tun \
--name zerotier-one \
--net=host \
--restart=always \
--cap-add=NET_ADMIN \
--cap-add=SYS_ADMIN \
-v /var/lib/zerotier-one:/var/lib/zerotier-one \
bltavares/zerotier:latest




Show status of the service:

docker exec zerotier-one zerotier-cli status

Join a specific network:

docker exec zerotier-one zerotier-cli join NETWORK-ID

--------------------------------


https://zhuanlan.zhihu.com/p/386597193

【N1小钢炮·一】安装docker版zerotier



docker run -d \
 --name=zerotier-one \
 --device=/dev/net/tun \
 --net=host \
 --cap-add=NET_ADMIN \
 --cap-add=SYS_ADMIN \
 -v /srv/dev-disk-by-uuid-d67261a5-c100-461e-be0c-da12baa203fd/zerotier-one:/var/lib/zerotier-one \
   bltavares/zerotier:1.6.2-2


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


1.6.5     1.6.6    1.8.4    不正常 ，只有 1.6.2-2 正常.

---------------------------------------------------------

http://192.168.11.12/luci-static/openclash/?hostname=192.168.11.12&port=9090&secret=123456



