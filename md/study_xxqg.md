https://github.com/TechXueXi/TechXueXi

echXueXi，中文名 科技强国。 是一个提供多种 免费开源 科技强国 工具 的组织。

这里聚集了一群热爱科技强国，学习强国的同志。

现在 Techxuexi 官方主要维护的仓库：
python 辅助： https://github.com/TechXueXi/TechXueXi
浏览器插件： https://github.com/TechXueXi/techxuexi-js


程序特性

全平台支持： win，macos，linux，vps，Raspbian-pi等各种平台
请使用带图形界面的环境,推荐windows。尽量使用自用电脑，
最好不要使用vps,云主机等（因为有可能被xuexi根据服务商ip查到）。
不支持xp

支持每日答题，支持每周答题，支持专项答题
全程后台静默学 xi ： 也可开启前台学 xi 展示
自动核对学 xi 分数： 根据每日分数学满为止
支持保存账户信息： 可以保存帐户信息每日免去重复登陆
默认多线程学 xi ： 可关闭，建议开启，每日学满只需20分钟
可设置自动关机： 每天下班用办公室电脑学 xi 后自动关机
增强防检测：随机浏览器请求头及自然学 xi 行为模拟

------------------------------------------------------------------

浏览器辅助脚本

请优先使用 不学习何以强国 ，它可以全自动，以后维护工作以它为主， 强国学习 需要手动进入答题。

装个浏览器插件 tampermonkey （可以从这里下载 https://github.com/TechXueXi/Tampermonkey ，网上也很多教程），点击插件里添加按钮，去掉编辑框里原来的代码，把 不学习何以强国 js 脚本复制粘贴进编辑框保存。开启这个脚本，然后进入网页强国 www.xuexi.cn 登录，刷新登录网页，左上角有启动按钮。

------------------------------------------------------------------

Docker运行
Docker 仓库地址：https://hub.docker.com/u/techxuexi/
劝退：DOCKER 最大的方便是点几下手机就可以不用管了，而脚本需要电脑，有时候想起来的时候没有电脑，有电脑了又忘了，适合之前就一直在用 docker 干其他事情的人，不适合专门为此搭建 docker 的人。实际上 docker 版除了不跳出任何网页窗口外，其实也不省事，就算是做好定时任务，或者命令，也得每天拿手机登录一下，而且还没有浏览器插件，或者源码运行的效率高。每天能开电脑的还是用浏览器插件，或者源码运行的比较好。docker 版比较适合有 vps 主机，群辉，软路由之类 24 小时开机的，并且自己爱折腾的小伙伴。


============================================================================================================


https://github.com/johlanse/study_xxqg

该项目基于playwright-go 开发，支持windows，linux,mac

文档地址: https://johlanse.shhy.xyz


windows使用教程
浏览器访问Release
选择最新版本下载 study_xxqg_amd64.zip
将其解压到合适的位置
进入解压后的文件夹，双击运行study_xxqg.exe,第一次打开可能会出现闪退，发现文件夹下生成了config文件夹
打开config目录下的confif.yml文件，进行编辑，详情内容见配置文件
再次进行运行study_xxqg.exe
使用浏览器打开http://127.0.0.1:8080
推送配置请参考推送
自定义浏览器位置
windows默认调用系统的edge浏览器，调用目录C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe

若不存在该浏览器会自动尝试下载浏览器到目录下的tools文件夹下，当然也可以自定义配置浏览器位置

修改配置文件的edge_path选项即可配置，配置为配置可执行文件的路径

自定义浏览器支持chromium内核的系列浏览器，但是版本不能太高

例如，我的chrome.exe文件在D盘的browser文件夹下，配置为D:/browser/chrome.exe或者D:\\browser\\chrome.exe
