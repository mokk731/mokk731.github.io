
## [LinuxMint 发行版下载](https://www.linuxmint.com/download_all.php)

## [Ubuntu 发行版下载](https://ubuntu.com/download/alternative-downloads)



## [Linux 硬盘分区指南](https://zhuanlan.zhihu.com/p/408467806)

理论上来说，安装 Linux 系统，只需要给硬盘分一个区，然后挂载 / 根分区目录即可正常安装和使用。这也是我对刚接触 Linux 的朋友最为推荐的方案。先不要被太多概念所影响，把系统先安装好并用起来。在此基础上，再根据自己的需求规划更加细致的分区方案。

感觉物理内存不够用？那就尝试在方案中添加一个 Swap 交换分区。它通常设置为物理内存大小的 50% 和 100% 左右。 2GB
    
在意个人数据的安全性？可以单独新建一个分区，并挂载到 /home 目录。如果可以的话，添加一个新的硬盘专门挂载到 /home 也没问题。

文件系统

给硬盘分好区，接下来要面对的就是把分区格式化的问题。Linux 有专属的各种分区格式，也就是俗称的文件系统。常用的文件系统如下：

ext4：目前 Linux 主流的文件系统，如无意外的话，默认都应该选择它。

swap：Swap 交换分区专属的文件系统，如果有划分 Swap 分区，需要格式化为这种格式。


一般分3个分区：

/

/home

/swap

---------------------------------------------------------------------------------------

## [笔记本 安装Linux Mint & Windows 双系统 ](https://zhuanlan.zhihu.com/p/97061601)

---------------------------------------------------------------------------------------


## [LinuxMint 如何修改开机默认启动项为windows](https://jingyan.baidu.com/article/e9fb46e1333eb77520f7664e.html)

1,快捷键CTRL+ALT+T

打开命令行窗口

输入命令：

sudo xed /etc/default/grub

回车输入密码


2,在如下的界面我们看到

GRUB_DEFAULT=0

默认启动项排序以0开始，第几个为windows我们就设置为几就可以了


3,最后我们运行命令更新grub

sudo update-grub

---------------------------------------------------------------------------------------



## [安装完 LinuxMint 19.3 后必做的10件事](https://zhuanlan.zhihu.com/p/96916200)


LinuxMint 发行版是一款基于Ubuntu的易用性好，特别适合入门者使用的一款Linux发行版，相比于Ubuntu，界面和操作更友好。

本教程主要讲解了在新安装完LinuxMint 19.3 后必做的10件事，可以让你的LinuxMint系统更好用。

LinuxMint 19.3系统安装完成后，

#1：修改系统的软件源。因为LinuxMint默认的软件源是美国，在国内速度比较慢，修改为国内的软件源后可以加快系统更新速度。

可以通过系统自带的软件源管理进行修改，如下图所示：



点击箭头所指内容，可以选择速度更快的国内源。

#2：更新系统

LinuxMint系统版本发布后的一定时间，往往系统都会有一些安全补丁或者软件更新。所以，安装安LinuxMint系统中，第一件事情就是检查一下系统是否有更新，及时更新。

sudo apt-get update
sudo apt-get upgrade

#3：安装中文输入法

LinuxMint安装完成后，默认的中文输入法并没有安装，需要打开菜单->控制中心->输入法，点击输入发选项后，选中简体中文，点击安装即可。



#4：安装多媒体插件

Linux Mint 19.3 整合了多种媒体播放器，但仍缺少一些多媒体代码，因此播放某些媒体文件可能是个问题。

运行下列命令来安装媒体插件，享受出色的电影观赏和音乐聆听体验。

sudo apt-get install mint-meta-codecs

#5：安装最新的图形驱动程序

对于游戏玩家来说，在LinuxMint上安装最新的图形驱动程序，可以让你享受流畅的游戏体验。

安装方法如下，进入到菜单 - >驱动程序管理器，执行此操作。



#6：安装常用软件

sudo apt-get install chromium-browser #Chronium浏览器
sudo apt-get install unace p7zip-rar sharutils rar arj lunzip lzip #rar和其它归档工具
sudo apt-get install uget #下载管理器
sudo apt-get install deluge-torrent  #torrent客户端



#7：系统主题美化

可以通过系统自带的外观设置，修改主题，壁纸，字体大小，面板等内容，调整成你喜欢的样子。

这里我安装了一个dock工具条，默认的菜单面板放置在顶部，主题选择黑色，更换了默认壁纸。

sudo apt-get install plank

按住Ctrl键，鼠标右击plank上的任意图标，在弹出来的菜单中选择首选项，可以对plank进行配置。

8：基础开发环境

java环境安装可以参看「如何在 Ubuntu 18.04 上安装 Java」。

安装 maven

sudo apt-get install maven

#安装 NodeJS 、MySQL、MYSQL Workbench、git、redis、mongodb、python3、ipython3 等
sudo apt-get install mysql-server mysql-workbench nodejs git redis mongodb npm python3 ipython3

#9：创建系统快照

当所有一切必要的配置完成后，第一件事情建议你创建系统快照，即便后续系统出现问题你也可以通过系统快照快速的恢复到你配置好的系统。不用再重新安装系统和安装软件及配置系统设置。

在LinuxMint中可以使用与更新管理器捆绑的Timeshift应用程序轻松完成系统快照的创建。



#10：清理系统

sudo apt-get clean      #自动清理apt-cache
sudo apt-get autoclean  #清理部分不再使用的软件包
sudo apt-get autoremove #清除所有未使用的依赖项

------------------------------------------------------------------------------


## [如何在Linux系统中安装Docker？](https://zhuanlan.zhihu.com/p/448288830)

## [树莓派上 Docker 的安装和使用](https://shumeipai.nxez.com/2019/05/20/how-to-install-docker-on-your-raspberry-pi.html)

[sudo curl -sSL https://get.docker.com | sh]

如果采用这一步安装成功，可直接跳到下文的图形界面安装那里继续阅读。

#下载 Docker 图形化界面 portainer

sudo docker pull portainer/portainer

#创建 portainer 容器

sudo docker volume create portainer_data

#运行 portainer

sudo docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

## [docker国内镜像加速](https://mokk731.github.io/txt/docker国内镜像加速.txt)


## [Docker镜像与容器备份迁移（export、import与commit、save、load）](https://cloud.tencent.com/developer/article/2027894)

save与load命令：
注意：
  1.不会丢弃历史记录和元数据，并可以回滚版本。  2.启动不用加/bin/bash。
  
save：将指定镜像保存成tar文件。
命令格式：
 docker save 镜像名 > xxx.tar
 或
 docker save -o xxx.tar 镜像名
 
 load：导入使用docker save命令导出的镜像。在这里插入代码片
命令格式：
 docker load -i xxx.tar
或
 docker load < xxx.tar

commit命令：
 将已存在容器中的镜像和修改内容提交为一个新的镜像，通过这个方式同样能保存读写层内容。
命令格式：
 docker commit [容器名称|ID] 生成新的镜像名字
选项说明：
 -a：提交的镜像作者
 -c：使用dockerfile指令来创建镜像
 -m：提交时的说明文字
 -p：在commit的时候，将正在运行的容器暂停
应用场景：
 主要作用是将配置好的一些容器生成新的镜像，可以得到复用（再次使用不需要再配置）。

 ---------
容器备份迁移案例：           ********

 docker ps    //查看正在运行的容器web
 
 sudo docker commit -p openwrt openwrtdata:v1    //-p暂停web容器并提交为新镜像webdata：v1
 
 docker images      //查看提交的新镜像webdata
 
 sudo docker save -o openwrtdata.tar openwrtdata:v1   // 将镜像保存成一个tar压缩包
 
 ls -l openwrtdata.tar
 
 sudo scp openwrtdata.tar /srv/dev-disk-by-uuid-d67261a5-c100-461e-be0c-da12baa203fd/Temp   // 将tar压缩包复制到另一台主机

---

 docker load -i openwrtdata.tar    // 在另一台主机上加载镜像的tar压缩包
 
 docker images
 
 docker run -itd --name openwrt openwrtdata:v1   // 使用这个加载的镜像运行容器
 
 docker ps
 

 

---------------------------------------------------------------------------------------


## [高通QCA6174wifi驱动](https://www.zhihu.com/question/348416658)

linux基本能用，问题还是不小

1.wifi驱动

我试了debian9，10,ubuntu 19.04 19.10,opensuse等不下5种发行版，要么是没有无线网卡，要么就是有网卡看不到SSID，再或者看得到SSID但无法连接,最后在manjaro下搞定了驱动

具体如下：

下载 board-2.bin 和 firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1

改名为 board.bin和 firmware-4.bin， 加执行权限,覆盖 /lib/firmware/ath10k/QCA6174/hw3.0/ 下同名文件，重启搞定

下载地址：

https://github.com/TheExiledMonk/ath10k-firmware/tree/7e56cbb94182a2fdab110cf5bfeded8fd1d44d30/QCA6174/hw3.0

注意：把这两个文件保存好，一升级firmware就有可能wifi挂掉，再覆盖一次,这个方法好像也只能连2.4G的信号，5G的连不上

https://github.com/kvalo/ath10k-firmware


## [Ubuntu + 高通QCA6174无线网卡连接不上WIFI问题解决](https://blog.csdn.net/qq_25782145/article/details/121214291)

查看无线网卡驱动型号：
lshw -c network

---------------------------------------------------------------------------------------------
## [rtl8852ae网卡驱动](https://zhuanlan.zhihu.com/p/393291458)

联想拯救者r7000p在ubuntu20.04未找到wifi适配器,安装rtl8852ae网卡驱动问题解决方案

https://github.com/lwfinger/rtw89


要求内核5.4以上，内核低的话要先升级内核。

uname -sr

首先安装必要的工具：

sudo apt-get update
sudo apt-get install make gcc linux-headers-$(uname -r) build-essential git

安装驱动：

git clone https://github.com/lwfinger/rtw89.git

接着打开rtw89目录下的phy.c 注释掉bss_color = vif->bss_conf.he_bss_color.color; 再打开rtw89目录下的cam.c 注释掉u8 bss_color = vif->bss_conf.he_bss_color.color;和FWCMD_SET_ADDR_BSSID_BSS_COLOR(cmd, bss_color);

cd rtw89
make

这里没报错则成功编译，如有问题则检查是否错误注释了

cd /lib/firmware/
mkdir rtw89
sudo make install

这里显示Install rtw89 SUCCESS则表明成功安装驱动
4.激活驱动

cd ~/rtw89
sudo modprobe rtw89pci

这时候检查右上角，如若没有问题，则会发现已有wifi图标，恭喜！

---------------------------------------------------------------------------------------

## [Linux常用命令大全](https://www.cnblogs.com/yjd_hycf_space/p/7730690.html)

---------------------------------------------------------------------------------------


## [Linux常用命令大全](https://www.cnblogs.com/yjd_hycf_space/p/7730690.html)

---------------------------------------------------------------------------------------
