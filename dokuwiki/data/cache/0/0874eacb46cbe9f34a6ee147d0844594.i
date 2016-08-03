a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:39097:"<p>智慧医疗安装部署文档V1.0.0</p>

<hr />

<p>系统名称       智慧医疗
  项目负责人<br />
  作者<br />
  文档提交日期   2015-8</p>

<hr />

<p>赛特斯信息科技股份有限公司</p>

<p>（版权所有，翻版必究）</p>

<p>修订记录</p>

<hr />

<p>No   修改后   修改内容简介   修改日期   修改人</p>

<pre><code>   版本号                             
</code></pre>

<p>1    1.0.0    初稿                      李根</p>

<hr />

<p>目录</p>

<p><a href="#背景"><em>1</em> <em>背景</em> 3</a></p>

<p><a href="#名词解析"><em>2</em> <em>名词解析</em> 3</a></p>

<p><a href="#系统配置"><em>3</em> <em>系统配置</em> 3</a></p>

<blockquote>
  <p><a href="#centos-6.7系统"><em>3.1</em> <em>CentOS 6.7系统</em> 3</a></p>
  
  <p><a href="#hosts配置"><em>3.1.1</em> <em>HOSTS配置</em> 3</a></p>
  
  <p><a href="#主机名配置"><em>3.1.2</em> <em>主机名配置</em> 4</a></p>
  
  <p><a href="#命令提示符修改"><em>3.1.3</em> <em>命令提示符修改</em> 4</a></p>
  
  <p><a href="#cenos-7.0系统"><em>3.2</em> <em>软件版本</em> 4</a></p>
  
  <p><a href="#openssh免密码登录"><em>3.3</em> <em>OpenSSH免密码登录</em> 5</a></p>
  
  <p><a href="#rsa认证"><em>3.3.1</em> <em>RSA认证</em> 5</a></p>
  
  <p><a href="#dsa认证"><em>3.3.2</em> <em>DSA认证</em> 6</a></p>
</blockquote>

<p><a href="#jdk7安装"><em>4</em> <em>JDK7安装</em> 7</a></p>

<blockquote>
  <p><a href="#jdk下载"><em>4.1</em> <em>JDK下载</em> 7</a></p>
  
  <p><a href="#jdk安装配置"><em>4.2</em> <em>JDK安装配置</em> 7</a></p>
</blockquote>

<p><a href="#tomcat安装配置"><em>5</em> <em>Tomcat安装配置</em> 9</a></p>

<blockquote>
  <p><a href="#tomcat下载"><em>5.1</em> <em>Tomcat下载</em> 9</a></p>
  
  <p><a href="#tomcat安装配置-1"><em>5.2</em> <em>Tomcat安装配置</em> 9</a></p>
  
  <p><a href="#tomcat-session共享"><em>5.3</em> <em>Tomcat Session共享</em> 10</a></p>
  
  <p><a href="#redis-session共享"><em>5.3.1</em> <em>Redis Session共享</em> 10</a></p>
</blockquote>

<p><a href="#mysql安装配置"><em>6</em> <em>MySQL安装配置</em> 11</a></p>

<blockquote>
  <p><a href="#mysql下载"><em>6.1</em> <em>MySQL下载</em> 11</a></p>
  
  <p><a href="#mysql安装配置-1"><em>6.2</em> <em>MySQL安装配置</em> 11</a></p>
  
  <p><a href="#mysql编码查询"><em>6.2.1</em> <em>MySQL编码查询</em> 11</a></p>
  
  <p><a href="#mysql密码修改"><em>6.2.2</em> <em>MySQL密码修改</em> 13</a></p>
  
  <p><a href="#mysql远程登录"><em>6.2.3</em> <em>MySQL远程登录</em> 13</a></p>
</blockquote>

<p><a href="#postgresql安装配置"><em>7</em> <em>Nginx安装配置</em> 14</a></p>

<blockquote>
  <p><a href="#nginx下载"><em>7.1</em> <em>Nginx下载</em> 14</a></p>
  
  <p><a href="#nginx-yum安装"><em>7.2</em> <em>Nginx YUM安装方法</em> 14</a></p>
  
  <p><a href="#nginx编译安装方法"><em>7.3</em> <em>Nginx编译安装方法</em> 15</a></p>
</blockquote>

<p><a href="#zabbix安装配置"><em>8</em> <em>Zabbix安装配置</em> 16</a></p>

<blockquote>
  <p><a href="#hosts配置-1"><em>8.1</em> <em>HOSTS配置</em> 16</a></p>
  
  <p><a href="#流程说明"><em>8.1.1</em> <em>流程说明</em> 16</a></p>
</blockquote>

<p><a href="#zookeeper安装配置"><em>9</em> <em>ZooKeeper安装配置</em> 16</a></p>

<blockquote>
  <p><a href="#zookeeper下载"><em>9.1</em> <em>ZooKeeper下载</em> 16</a></p>
  
  <p><a href="#伪集群安装流程步骤"><em>9.1.1</em> <em>流程说明</em> 16</a></p>
</blockquote>

<p><a href="#redis安装配置"><em>10</em> <em>Redis安装配置</em> 17</a></p>

<blockquote>
  <p><a href="#redis下载"><em>10.1</em> <em>Redis下载</em> 17</a></p>
  
  <p><a href="#流程说明-2"><em>10.1.1</em> <em>流程说明</em> 17</a></p>
</blockquote>

<p><a href="#codis安装配置"><em>11</em> <em>Codis安装配置</em> 17</a></p>

<blockquote>
  <p><a href="#codis下载"><em>11.1</em> <em>Codis下载</em> 17</a></p>
  
  <p><a href="#流程说明-3"><em>11.1.1</em> <em>流程说明</em> 17</a></p>
</blockquote>

<h1>背景</h1>

<p>本文旨在智慧社区卡片的方案具体设计。</p>

<h1>名词解析</h1>

<ul>
<li>APP ID:是应用在开发者中心中唯一数字ID</li>
</ul>

<h1>系统配置</h1>

<p>服务器名称   主机名    IP              服务器域名</p>

<hr />

<p>服务器A      host201   172.17.40.201   host201<br />
  服务器B      host202   172.17.40.202   host202<br />
  服务器C      host203   172.17.40.202   host203</p>

<h2>CentOS 6.7系统</h2>

<p>CentOS系统采用6.7系统，安装选择Software Development Workstation
版本（包含基本系统、虚拟化平台、桌面环境、开放工具等1538个软件包）。yum
update 更新安装源。</p>

<h3>HOSTS配置</h3>

<ol>
<li><p>命令 vi /etc/hosts</p></li>
<li><p>修改hosts文件，新增 三行，内容如下</p></li>
</ol>

<blockquote>
  <p>172.17.40.201 host201\
  172.17.40.202 host202\
  172.17.40.203 host203</p>
</blockquote>

<ol>
<li><p>esc，输入wq 保存文件，并退出。</p></li>
<li><p>命令 ping host201 或 ping host202 或ping host203 ，确认是否生效</p></li>
</ol>

<p>其他服务器都进行对应修改。</p>

<h3>主机名配置</h3>

<ol>
<li><p>命令 vi /etc/sysconfig/network</p></li>
<li><p>修改network文件，修改HOSTNAME行，内容如下</p></li>
</ol>

<blockquote>
  <p>HOSTNAME=host201</p>
</blockquote>

<ol>
<li><p>esc，输入wq 保存文件，并退出。</p></li>
<li><p>命令hostname host201</p></li>
<li><p>重启系统 命令 reboot，完成后命令 hostname 确认是否生效</p></li>
</ol>

<p>其他服务器都进行对应修改。</p>

<h3>命令提示符修改</h3>

<ol>
<li><p>命令 echo \$PS1，显示当前命令提示符格式</p></li>
<li><p>命令 vi \~/.bashrc，修改.bashrc文件，增加行，内容如下</p></li>
</ol>

<blockquote>
  <p>&#35;export PS1='&#91;&#92;u@&#92;h &#92;W&#93;&#92;\$'</p>
  
  <p>字符含义：&#92;u显示当前用户帐号，&#92;h显示当前主机名，&#92;w显示当前完整工作路径（&#92;W显示当前工作路径），&#92;\$显示’\$’符号</p>
</blockquote>

<ol>
<li><p>esc，输入wq 保存文件，并退出。</p></li>
<li><p>重新登录控制台，确认是否生效命令</p></li>
</ol>

<p>其他服务器都进行对应修改。</p>

<h2>CenOS 7.0系统</h2>

<ol>
<li><strong>EPEL yum</strong></li>
</ol>

<p><strong>http://fedoraproject.org/wiki/EPEL</strong></p>

<p>rpm -Uvh
https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm</p>

<ol>
<li><strong>网络配置</strong></li>
</ol>

<p>vi /etc/sysconfig/network-scripts/ifcfg-em4</p>

<p>TYPE=Ethernet</p>

<p>BOOTPROTO=none</p>

<p>DEFROUTE=yes</p>

<p>IPV4&#95;FAILURE&#95;FATAL=no</p>

<p>IPV6INIT=yes</p>

<p>IPV6&#95;AUTOCONF=yes</p>

<p>IPV6&#95;DEFROUTE=yes</p>

<p>IPV6&#95;FAILURE&#95;FATAL=no</p>

<p>NAME=em4</p>

<p>UUID=3c25b407-ddaa-4128-a4bb-7100d761451e</p>

<p>DEVICE=em4</p>

<p>ONBOOT=yes</p>

<p>IPADDR=172.16.1.202</p>

<p>PREFIX=24</p>

<p>GATEWAY=172.16.1.1</p>

<p>DNS1=114.114.114.114</p>

<p>IPV6&#95;PEERDNS=yes</p>

<p>IPV6&#95;PEERROUTES=yes</p>

<p>&#35;service network restart</p>

<ol>
<li><strong>用户管理</strong></li>
</ol>

<p>添加用户</p>

<p>adduser {username}</p>

<p>修改密码</p>

<p>passwd {username}</p>

<p>删除用户</p>

<p>userdel {username}</p>

<p><strong>禁止ROOT远程登录</strong></p>

<p>&#35;<strong>vi /etc/ssh/sshd&#95;config</strong></p>

<p><strong>修改为PermitRootLogin no</strong></p>

<p><strong>service sshd restart</strong></p>

<ol>
<li><strong>防火墙配置</strong></li>
</ol>

<p>1、直接关闭firewalld防火墙</p>

<p>&#35;systemctl stop firewalld.service &#35;停止firewall</p>

<p>&#35;systemctl disable firewalld.service &#35;禁止firewall开机启动</p>

<p>2、设置 iptables service</p>

<p>&#35;yum -y install iptables-services</p>

<p>如果要修改防火墙配置，如增加防火墙端口3306</p>

<p>&#35;vi /etc/sysconfig/iptables</p>

<p>增加规则</p>

<p>-A INPUT -m state --state NEW -m tcp -p tcp --dport 3306 -j ACCEPT</p>

<p>保存退出后</p>

<p>&#35;systemctl restart iptables.service &#35;重启防火墙使配置生效</p>

<p>&#35;systemctl enable iptables.service &#35;设置防火墙开机启动</p>

<h3>SELINUX关闭</h3>

<p>1、查看selinux状态</p>

<p>查看selinux的详细状态，如果为enable则表示为开启</p>

<p>&#35; /usr/sbin/sestatus -v</p>

<p>2、查看selinux的模式</p>

<p>&#35; getenforce</p>

<p>3、永久性关闭（这样需要重启服务器后生效）</p>

<p>&#35; sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config</p>

<p>4、临时性关闭（立即生效，但是重启服务器后失效）</p>

<p>&#35; setenforce 0 &#35;设置selinux为permissive模式（即关闭）</p>

<p>&#35; setenforce 1 &#35;设置selinux为enforcing模式（即开启）</p>

<p>或者 增加NGINX网络访问</p>

<p>setsebool -P httpd&#95;can&#95;network&#95;connect 1</p>

<h2>Linux命令</h2>

<p>Linux版本查看</p>

<p>&#35; uname –a</p>

<p>&#35; more /etc/redhat-release</p>

<p>&#35;lsb&#95;release –a</p>

<p>&#35;yum install lsb</p>

<p>getconf LONG&#95;BIT </p>

<p>64位系统运行32位软件。</p>

<p>&#35; <strong>yum install glibc&#42;.i686</strong>\
&#35; <strong>yum install zlib&#42;.i686</strong>\
&#35; <strong>yum install libstdc++.so.6</strong></p>

<h2>软件版本</h2>

<p>软件名称    软件版本   软件文件名                    安装路径</p>

<hr />

<p>Java        jdk-7u79   jdk-7u79-linux-x64.tar.gz     usr/local/java/
  Tomcat      7.0.63     apache-tomcat-7.0.63.tar.gz   usr/local/tomcat/
  Nginx       1.8.0                                    usr/local/nginx/
  MySQL       5.5<br />
  ZooKeeper<br />
  Redis</p>

<h2>OpenSSH免密码登录</h2>

<p>OpenSSH 密钥管理,参考</p>

<p>http://www.ibm.com/developerworks/cn/linux/security/openssh/part1/index.html</p>

<p>http://www.ibm.com/developerworks/cn/linux/security/openssh/part2/index.html</p>

<p>http://www.ibm.com/developerworks/cn/linux/security/openssh/part3/index.html</p>

<h3>RSA认证</h3>

<p>A机器客户端，B机器服务端</p>

<p>/etc/init.d/sshd restart </p>

<ol>
<li>A机器root用户执行ssh-keygen命令回车，生成安全信任关系证书</li>
</ol>

<blockquote>
  <p>&#35; ssh-keygen -t rsa</p>
  
  <p>Generating public/private rsa key pair.\
  Enter file in which to save the key (/root/.ssh/id&#95;rsa):\
  Enter passphrase (empty for no passphrase):\
  Enter same passphrase again:\
  Your identification has been saved in /root/.ssh/id&#95;rsa.\
  Your public key has been saved in /root/.ssh/id&#95;rsa.pub.\
  The key fingerprint is:\
  f3:5d:c7:e2:da:47:e9:17:52:2e:49:92:88:c6:a9:6e lig@ligdeMBP.lan\
  The key's randomart image is:\
  +--&#91; RSA 2048&#93;----+\
  | |\
  | |\
  | . o . . |\
  | = . o . o |\
  | o S o &#42; +|\
  | . o . &#42; &#42;.|\
  | . . . =..|\
  | E o .o|\
  | . . ...|\
  +-----------------+</p>
  
  <p>在程序提示输入passphrase时直接输入回车，表示无证书密码。</p>
  
  <p>上述命令将生成私钥证书id&#95;rsa和公钥证书id&#95;rsa.pub，存放在用户\~/.ssh目录下</p>
</blockquote>

<ol>
<li>查看\~/.ssh生成的密钥文件</li>
</ol>

<blockquote>
  <p>&#35; lig\$ cd \~/.ssh\
  &#35; ls -l\
  total 24\
  -rw-r--r-- 1 root root 396 Aug 19 14:10 authorized&#95;keys\
  -rw------- 1 root root 1671 Aug 19 14:10 id&#95;rsa\
  -rw-r--r-- 1 root root 396 Aug 19 14:10 id&#95;rsa.pub\
  -rw-r--r-- 1 root root 391 Aug 19 14:13 known&#95;hosts\
  &#35;</p>
</blockquote>

<ol>
<li>A对B建立信任关系</li>
</ol>

<blockquote>
  <p>将公钥证书id&#95;rsa.pub复制到机器B的root/.ssh/目录下，同时将文件名更换为
  authorized&#95;keys，此时需要输入B机器的root用户密码（还未建立信任关系）。建立了客户端到服务器端的信任关系后，客户端就可以不用再输入密码，就可以从服务器端拷贝数据了。</p>
</blockquote>

<p>scp -r id&#95;rsa.pub 10.0.0.188:/root/.ssh/<span id="OLE_LINK3"
class="anchor"><span id="OLE_LINK4"
class="anchor"></span></span>authorized&#95;keys</p>

<blockquote>
  <p>sudo chmod 644 \~/.ssh/authorized&#95;keys</p>
  
  <p>sudo chmod 700 \~/.ssh</p>
</blockquote>

<ol>
<li>服务器端验证</li>
</ol>

<blockquote>
  <p>ssh localhost</p>
</blockquote>

<h3>DSA认证</h3>

<h1>JDK7安装</h1>

<h2>JDK下载</h2>

<h2>JDK安装配置</h2>

<ol>
<li>卸载自带OpenJDK</li>
</ol>

<blockquote>
  <p>查看已安装的jdk文件</p>
  
  <p>rpm -qa | grep jdk</p>
  
  <p>java-1.6.0-openjdk-1.6.0.35-1.13.7.1.el6&#95;6.x86&#95;64\
  java-1.6.0-openjdk-javadoc-1.6.0.35-1.13.7.1.el6&#95;6.x86&#95;64\
  java-1.6.0-openjdk-devel-1.6.0.35-1.13.7.1.el6&#95;6.x86&#95;64\
  java-1.7.0-openjdk-devel-1.7.0.79-2.5.5.4.el6.x86&#95;64\
  java-1.7.0-openjdk-1.7.0.79-2.5.5.4.el6.x86&#95;64</p>
  
  <p>rpm -qa | grep gcj</p>
  
  <p>java-1.5.0-gcj-1.5.0.0-29.1.el6.x86&#95;64</p>
</blockquote>

<p>RPM包安装</p>

<blockquote>
  <p>&#91;root@light162 alternatives&#93;&#35;rpm -ivh jdk-8u91-linux-x64.rpm</p>
</blockquote>

<ol>
<li><blockquote>
  <p>安装到/usr/local/java目录下</p>
  
  <p>服务器命令：</p>
  
  <p>&#91;root@medical-server-pc-130 \~&#93;&#35; cd /usr/local/</p>
  
  <p>&#91;root@medical-server-pc-130 local&#93;&#35; mkdir java</p>
  
  <p>&#91;root@medical-server-pc-130 local&#93;&#35; cd java</p>
  
  <p>&#91;root@medical-server-pc-130 java&#93;&#35;</p>
  
  <p>客户端上传文件到服务器</p>
  
  <p>scp jdk-7u79-linux-x64.tar.gz root@192.168.1.130:/usr/local/java/</p>
  
  <p>服务器命令：</p>
  
  <p>解压文件</p>
  
  <p>&#91;root@medical-server-pc-130 java&#93;&#35; tar zxvf
  jdk-7u79-linux-x64.tar.gz</p>
  
  <p>&#91;root@medical-server-pc-130 java&#93;&#35; rm jdk-7u79-linux-x64.tar.gz</p>
  
  <p>JDK 安装目录为：</p>
  
  <p>/usr/local/java/jdk1.7.0&#95;79</p>
</blockquote></li>
<li><p>配置</p></li>
<li><p>配置 /etc/profile文件尾部增加</p></li>
</ol>

<p>&#35;vi /etc/profile</p>

<p>export JAVA&#95;HOME=/usr/local/java/jdk1.7.0&#95;79</p>

<p>export PATH=\$JAVA&#95;HOME/bin: \$PATH</p>

<p>export CLASSPATH=.:\$JAVA&#95;HOME/lib:\$JAVA&#95;HOME/jre/lib</p>

<p>&#35;source /etc/profile</p>

<p>&#35;echo "&#35;&#35;&#35;&#35;&#35;&#35;&#35;JAVA&#95;HOME&#35;&#35;&#35;&#35;&#35;&#35;&#35;"&gt;&gt; /etc/profile</p>

<p>&#35;echo " export JAVA&#95;HOME=/usr/local/java/jdk1.7.0&#95;79"&gt;&gt;
/etc/profile</p>

<p>&#35;echo " export PATH=\$JAVA&#95;HOME/bin:\$PATH "&gt;&gt; /etc/profile</p>

<p>&#35;echo " export CLASSPATH=.:\$JAVA&#95;HOME/lib:\$JAVA&#95;HOME/jre/lib
"&gt;&gt; /etc/profile</p>

<p>&#35;source /etc/profile</p>

<ol>
<li>验证</li>
</ol>

<p>执行java –version 命令，查看版本信息</p>

<p>&#91;root@medical-server-pc-130 jdk1.7.0&#95;79&#93;&#35; java -version</p>

<p>java version "1.7.0&#95;79"\
Java(TM) SE Runtime Environment (build 1.7.0&#95;79-b15)\
Java HotSpot(TM) 64-Bit Server VM (build 24.79-b02, mixed mode)</p>

<h1>Tomcat安装配置</h1>

<h2>Tomcat下载</h2>

<h2>Tomcat安装配置</h2>

<ol>
<li>上传解压文件到/usr/local/tomcat</li>
</ol>

<blockquote>
  <p>scp apache-tomcat-7.0.63.tar.gz root@192.168.1.130:/usr/local/tomcat/</p>
</blockquote>

<ol>
<li>配置/etc/profile 在文件末尾添加</li>
</ol>

<blockquote>
  <p>&#35;vim /etc/profile\
  export TOMCAT&#95;HOME=/usr/local/tomcat/apache-tomcat-7.0.63\
  &#35;source /etc/profile\
  &#35;cd /apache-tomcat/bin/\
  &#35;chmod 777 &#42;.sh\
  mv ROOT ROOT.old</p>
  
  <p>&#35;echo "&#35;&#35;&#35;&#35;&#35;&#35;&#35; TOMCAT &#95;HOME&#35;&#35;&#35;&#35;&#35;&#35;&#35;"&gt;&gt;
  /etc/profile</p>
  
  <p>&#35;echo " export
  TOMCAT&#95;HOME=/usr/local/tomcat/apache-tomcat-7.0.63"&gt;&gt;
  /etc/profile</p>
</blockquote>

<ol>
<li>修改内存配置</li>
</ol>

<p>bin/catalina.sh文件修改JAVA&#95;OPTS,新增如下</p>

<h2>&#35; ----- Execute The Requested Command</h2>

<p>JAVA&#95;OPTS="\$JAVA&#95;OPTS -server -XX:PermSize=128M -XX:MaxPermSize=512m"</p>

<ol>
<li>防火墙，增加例外</li>
</ol>

<p>iptables -I INPUT 5 -p tcp --dport 8080 -j ACCEPT</p>

<ol>
<li>启动tomcat</li>
</ol>

<blockquote>
  <p>&#91;root@medical-server-pc-130 bin&#93;&#35; ./startup.sh\
  Using CATALINA&#95;BASE: /usr/local/tomcat/apache-tomcat-7.0.63\
  Using CATALINA&#95;HOME: /usr/local/tomcat/apache-tomcat-7.0.63\
  Using CATALINA&#95;TMPDIR: /usr/local/tomcat/apache-tomcat-7.0.63/temp\
  Using JRE&#95;HOME: /usr/local/java/jdk1.7.0&#95;79\
  Using CLASSPATH:
  /usr/local/tomcat/apache-tomcat-7.0.63/bin/bootstrap.jar:/usr/local/tomcat/apache-tomcat-7.0.63/bin/tomcat-juli.jar\
  Tomcat started.</p>
</blockquote>

<p>浏览器访问：http://ip:8080</p>

<h2>Tomcat Session共享</h2>

<h3>Redis Session共享</h3>

<h1>MySQL安装配置</h1>

<h2>MySQL下载</h2>

<p>YUM下载安装地址</p>

<p>http://dev.mysql.com/downloads/repo/yum/</p>

<p>CentOS7 下载安装</p>

<p>http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm</p>

<p>&#91;root@light162 \~&#93;&#35;yum install -y mysql-community-server</p>

<p>foTjTeCZf9</p>

<p>mysql-community-common-5.7.12-1.el7.x86&#95;64.rpm
mysql-community-libs-5.7.12-1.el7.x86&#95;64.rpm
mysql-community-libs-compat-5.7.12-1.el7.x86&#95;64.rpm</p>

<p>mysql-community-client-5.7.12-1.el7.x86&#95;64.rpm</p>

<p>mysql-community-server-5.7.12-1.el7.x86&#95;64.rpm</p>

<h2>MySQL安装配置</h2>

<p>yum install -y mysql-server</p>

<p>mysqladmin -u root password 'root'</p>

<p>service mysqld restart</p>

<p>防火墙设置</p>

<p>iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 3306 -j
ACCEPT</p>

<p>update mysql.user set password=PASSWORD('root') where user='root'</p>

<p>mysql 5.7生成随机密码 /var/log/mysqld.log</p>

<p>A temporary password is generated for root@localhost : foTjTeCZf9/&#42;</p>

<p>grant all privileges on media.&#42; to medical&#95;app@'%'  identified by
'medical&#95;app' with grant option;</p>

<h3>MySQL编码查询</h3>

<p>mysql&gt;SHOW VARIABLES LIKE 'character&#95;set&#95;%';</p>

<p>+--------------------------+-----------------------------------------------+</p>

<p>| Variable&#95;name | Value |</p>

<p>+--------------------------+-----------------------------------------------+</p>

<p>| character&#95;set&#95;client | utf8 |</p>

<p>| character&#95;set&#95;connection | utf8 |</p>

<p>| character&#95;set&#95;database | utf8 |</p>

<p>| character&#95;set&#95;filesystem | binary |</p>

<p>| character&#95;set&#95;results | utf8 |</p>

<p>| character&#95;set&#95;server | utf8 |</p>

<p>| character&#95;set&#95;system | utf8 |</p>

<p>| character&#95;sets&#95;dir |
D:&#92;server&#92;mysql-5.6.26-winx64&#92;share&#92;charsets&#92; |</p>

<p>+--------------------------+-----------------------------------------------+</p>

<p>8 rows in set (0.00 sec)</p>

<p>mysql&gt;SHOW VARIABLES LIKE 'collation&#95;%';</p>

<p>+----------------------+-----------------+</p>

<p>| Variable&#95;name | Value |</p>

<p>+----------------------+-----------------+</p>

<p>| collation&#95;connection | utf8&#95;general&#95;ci |</p>

<p>| collation&#95;database | utf8&#95;general&#95;ci |</p>

<p>| collation&#95;server | utf8&#95;general&#95;ci |</p>

<p>+----------------------+-----------------+</p>

<p>3 rows in set (0.01 sec)</p>

<p>修改配置文件 /etc/my.cnf</p>

<p>&#91;mysqld&#93;\
port 3306\
datadir=/var/lib/mysql\
socket=/var/lib/mysql/mysql.sock\
user=mysql\
&#35; Disabling symbolic-links is recommended to prevent assorted security
risks\
symbolic-links=0\
character&#95;set&#95;server = utf8\
&#91;mysqld&#95;safe&#93;\
log-error=/var/log/mysqld.log\
pid-file=/var/run/mysqld/mysqld.pid\
&#91;mysql&#93;\
default-character-set = utf8</p>

<h3>MySQL密码修改</h3>

<p>mysqladmin -u root password 'root'</p>

<p>mysqladmin -u root password ' root '</p>

<p>SET PASSWORD FOR 'root'@'localhost'=PASSWORD('root');</p>

<p>SET PASSWORD FOR 'root'@'%'=PASSWORD('root');</p>

<p>删除匿名用户</p>

<p>delete from mysql.user where user='';　</p>

<p>flush privileges;</p>

<p>MYSQL5.7修改密码</p>

<p>ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';</p>

<p>vi /etc/my.cnf</p>

<p>validate&#95;password = OFF;</p>

<h3>MySQL远程登录</h3>

<p>grant all privileges on &#42;.&#42; to 'root'@'%' identified by 'root' with
grant option;</p>

<p>flush privileges;</p>

<p>grant all privileges on media.&#42; to medical&#95;app@'%'  identified by
'medical&#95;app' with grant option;</p>

<p>创建数据库</p>

<p>CREATE DATABASE IF NOT EXISTS media DEFAULT CHARSET utf8 COLLATE
utf8&#95;general&#95;ci;</p>

<p>执行SQL文件</p>

<p>mysql -h rdsjruzybjruzyb.mysql.rds.aliyuncs.com -u root -p
--default-character-set=utf8 –A source /root/Job.sql</p>

<p>导出SQL结构数据</p>

<p>mysqldump -u root -p media --default-character-set=utf8 &gt;source.sql</p>

<p>ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';</p>

<h1>Postgresql安装配置</h1>

<p>&#35;yum list postgres&#42;</p>

<p>&#35;yum install postgresql-server</p>

<p>yum install postgresql-contrib</p>

<p>&#35;service postgresql initdb</p>

<p>&#35;service postgresql restart</p>

<h2>增加用户</h2>

<p>sudo -u postgres createuser --superuser actor</p>

<p>sudo -u postgres psql postgres --command '&#92;password actor'</p>

<p>sudo -u postgres createdb actor -O actor</p>

<p>pg&#95;hba.conf</p>

<p>host all all 127.0.0.1/32 md5</p>

<p>host all all 172.19.1.50 md5</p>

<h1>Nginx安装配置</h1>

<h2>Nginx下载</h2>

<h2>Nginx YUM安装</h2>

<h3>Centos6</h3>

<p>nginx的yum在线安装</p>

<p>wget
http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm</p>

<p>安装源库</p>

<p>chmod +x nginx-release-centos-6-0.el6.ngx.noarch.rpm </p>

<p>rpm -i nginx-release-centos-6-0.el6.ngx.noarch.rpm </p>

<p>安装nginx</p>

<p>yum install nginx</p>

<h3>Centos7</h3>

<p>&#35;rpm –Uvh
http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm</p>

<p>安装nginx</p>

<p>yum install nginx</p>

<p>安装完成后</p>

<p>默认nginx配置文件: /etc/nginx/nginx.conf        
【nginx主要的配置文件】 </p>

<p>默认nginx的ssl配置文件: /etc/nginx/conf.d/ssl.conf
【配置SSL证书的，也可以并入到nginx.conf文件里】 </p>

<p>默认nginx的虚拟主机配置文件: /etc/nginx/conf.d/virtual.conf
【如同Apache的虚拟主机配置，也可以并入到nginx.conf文件里】 </p>

<p>默认的web&#95;root文件夹路径: /usr/share/nginx/html
【web目录夹，放置Magento主程序】 </p>

<p>配置iptables</p>

<p>iptables -I INPUT 5 -p tcp --dport 80 -j ACCEPT</p>

<p>启动nginx</p>

<p>service nginx start</p>

<p>打开IP地址 可见“Welcome to nginx!”表示安装成功。</p>

<h2>Nginx编译安装方法</h2>

<p>http://www.pcre.org pcre8.37 下载</p>

<p>yum -y install perl-devel perl-ExtUtils-Embed</p>

<p>yum -y install gcc gcc-c++</p>

<p>解压</p>

<ol>
<li>上传文件</li>
</ol>

<p>scp nginx-1.8.0.tar.gz root@192.168.1.130:/usr/local/soft/</p>

<ol>
<li>解压</li>
</ol>

<p>tar -zxvf nginx-1.8.0.tar.gz</p>

<p>cd nginx-1.8.0</p>

<p><span id="OLE_LINK1" class="anchor"><span id="OLE_LINK2"
class="anchor"></span></span>./configure --prefix=/usr/local/nginx &#92;\
--with-http&#95;ssl&#95;module &#92;\
--with-http&#95;realip&#95;module &#92;\
--with-http&#95;addition&#95;module &#92;\
--with-http&#95;sub&#95;module &#92;\
--with-http&#95;dav&#95;module &#92;\
--with-http&#95;flv&#95;module &#92;\
--with-http&#95;gzip&#95;static&#95;module &#92;\
--with-http&#95;stub&#95;status&#95;module &#92;\
--with-http&#95;perl&#95;module &#92;\
--with-mail &#92;\
<span id="OLE_LINK5" class="anchor"><span id="OLE_LINK6"
class="anchor"></span></span>--with-mail&#95;ssl&#95;module &#92;\
--with-pcre=/usr/local/soft/pcre-8.37&#92;\
--with-openssl=/home/server/openssl-0.9.8zg</p>

<blockquote>
  <p>--with-zlib=/root/zlib-1.2.5</p>
</blockquote>

<p>make &amp;&amp; make install</p>

<p>--with-openssl=/root/<span id="OLE_LINK7" class="anchor"><span
id="OLE_LINK8" class="anchor"></span></span>openssl-0.9.8o &#92;\
--with-pcre &#92;\
--with-pcre=/root/pcre-8.10 &#92;\
--with-zlib=/root/zlib-1.2.5 &#92;\
--with-http&#95;geoip&#95;module</p>

<h2>Nginx配置</h2>

<h3>默认主配置</h3>

<p>&#91;root@light162 \~&#93;&#35; vi /etc/nginx/nginx.conf</p>

<p>user nginx;</p>

<p>worker&#95;processes 1;</p>

<p>error&#95;log /var/log/nginx/error.log warn;</p>

<p>pid /var/run/nginx.pid;</p>

<p>events {</p>

<p>worker&#95;connections 1024;</p>

<p>}</p>

<p>http {</p>

<p>include /etc/nginx/mime.types;</p>

<p>default&#95;type application/octet-stream;</p>

<p>log&#95;format main '\$remote&#95;addr - \$remote&#95;user &#91;\$time&#95;local&#93;
"\$request" '</p>

<p>'\$status \$body&#95;bytes&#95;sent "\$http&#95;referer" '</p>

<p>'"\$http&#95;user&#95;agent" "\$http&#95;x&#95;forwarded&#95;for"';</p>

<p>access&#95;log /var/log/nginx/access.log main;</p>

<p>sendfile on;</p>

<p>&#35;tcp&#95;nopush on;</p>

<p>keepalive&#95;timeout 65;</p>

<p>&#35;gzip on;</p>

<p>include /etc/nginx/conf.d/&#42;.conf;</p>

<p>}</p>

<h3>HTTP服务配置</h3>

<p>&#91;root@light162 \~&#93;&#35; vi /etc/nginx/conf.d/default.conf</p>

<p>server {</p>

<p>listen 80;</p>

<p>server&#95;name localhost;</p>

<p>&#35;charset koi8-r;</p>

<p>&#35;access&#95;log /var/log/nginx/log/host.access.log main;</p>

<p>location / {</p>

<p>root /usr/share/nginx/html;</p>

<p>index index.html index.htm;</p>

<p>}</p>

<p>&#35;error&#95;page 404 /404.html;</p>

<p>&#35; redirect server error pages to the static page /50x.html</p>

<p>&#35;</p>

<p>error&#95;page 500 502 503 504 /50x.html;</p>

<p>location = /50x.html {</p>

<p>root /usr/share/nginx/html;</p>

<p>}</p>

<p>&#35; proxy the PHP scripts to Apache listening on 127.0.0.1:80</p>

<p>&#35;</p>

<p>&#35;location \~ &#92;.php\$ {</p>

<p>&#35; proxy&#95;pass http://127.0.0.1;</p>

<p>&#35;}</p>

<p>&#35; pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000</p>

<p>&#35;</p>

<p>&#35;location \~ &#92;.php\$ {</p>

<p>&#35; root html;</p>

<p>&#35; fastcgi&#95;pass 127.0.0.1:9000;</p>

<p>&#35; fastcgi&#95;index index.php;</p>

<p>&#35; fastcgi&#95;param SCRIPT&#95;FILENAME /scripts\$fastcgi&#95;script&#95;name;</p>

<p>&#35; include fastcgi&#95;params;</p>

<p>&#35;}</p>

<p>&#35; deny access to .htaccess files, if Apache's document root</p>

<p>&#35; concurs with nginx's one</p>

<p>&#35;</p>

<p>&#35;location \~ /&#92;.ht {</p>

<p>&#35; deny all;</p>

<p>&#35;}</p>

<p>}</p>

<h3>HTTPS服务配置</h3>

<p>&#91;root@light162 \~&#93;&#35;vi /etc/nginx/conf.d/www.lightheart.com.cn.conf</p>

<p>server {</p>

<p>listen 443 ssl;</p>

<p>server&#95;name www.lightheart.com.cn;</p>

<p>ssl on;</p>

<p>ssl&#95;certificate
/etc/letsencrypt/live/www.lightheart.com.cn/fullchain.pem;</p>

<p>ssl&#95;certificate&#95;key
/etc/letsencrypt/live/www.lightheart.com.cn/privkey.pem;</p>

<p>ssl&#95;protocols TLSv1 TLSv1.1 TLSv1.2;</p>

<p>ssl&#95;prefer&#95;server&#95;ciphers on;</p>

<p>ssl&#95;ciphers 'EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH';</p>

<p>&#35;charset koi8-r;</p>

<p>&#35;access&#95;log /var/log/nginx/log/host.access.log main;</p>

<p>location / {</p>

<p>root /usr/share/nginx/html;</p>

<p>index index.html index.htm;</p>

<p>}</p>

<p>}</p>

<h2>NGINX LUA</h2>

<h1>Zabbix安装配置</h1>

<h2>HOSTS配置</h2>

<h3>流程说明</h3>

<h1>ZooKeeper安装配置</h1>

<h2>ZooKeeper下载</h2>

<h3>伪集群安装流程步骤</h3>

<ol>
<li>解压zookeeper-3.3.6</li>
</ol>

<blockquote>
  <p>&#91;root@light162 \~&#93;&#35;tar zookeeper-3.3.6.tar.gz</p>
</blockquote>

<ol>
<li>拷贝三份zookeeper-3.3.6</li>
</ol>

<p>&#91;root@light162 data&#93;&#35;cp zookeeper-3.3.6-node1 zookeeper-3.4.6-node2
–R</p>

<p>&#91;root@light162 data&#93;&#35;cp zookeeper-3.3.6-node1 zookeeper-3.4.6-node3
–R</p>

<ol>
<li>修改配置</li>
</ol>

<p>&#35;zookeeper-3.3.6-node1的配置</p>

<p>tickTime=2000</p>

<p>initLimit=10</p>

<p>syncLimit=5</p>

<p>dataDir=/root/zookeeper-3.3.6-2181/data</p>

<p>clientPort=2181</p>

<p>server.2181=localhost:2887:3887</p>

<p>server.2182=localhost:2888:3888</p>

<p>server.2183=localhost:2889:3889</p>

<p>&#35;zookeeper-3.3.6-node2的配置</p>

<p>tickTime=2000</p>

<p>initLimit=10</p>

<p>syncLimit=5</p>

<p>dataDir=/root/zookeeper-3.3.6-2182/data</p>

<p>clientPort=2182</p>

<p>server.2181=localhost:2887:3887</p>

<p>server.2182=localhost:2888:3888</p>

<p>server.2183=localhost:2889:3889</p>

<p>&#35;zookeeper-3.3.6-node1的配置</p>

<p>tickTime=2000</p>

<p>initLimit=10</p>

<p>syncLimit=5</p>

<p>dataDir=/root/zookeeper-3.3.6-2183/data</p>

<p>clientPort=2183</p>

<p>server.2181=localhost:2887:3887</p>

<p>server.2182=localhost:2888:3888</p>

<p>server.2183=localhost:2889:3889</p>

<p>echo 2181 &gt; /root/zookeeper-3.3.6-2181/data/myid</p>

<p>echo 2182 &gt; /root/zookeeper-3.3.6-2182/data/myid</p>

<p>echo 2183 &gt; /root/zookeeper-3.3.6-2183/data/myid</p>

<ol>
<li>启动三个zookeeper</li>
</ol>

<p>&#91;root@light162 \~&#93;&#35;./bin/zkServer.sh start</p>

<ol>
<li>检查集群状态</li>
</ol>

<p>echo stat|nc localhost 2181</p>

<p>echo stat|nc localhost 2182</p>

<p>echo stat|nc localhost 2183</p>

<p>&#91;root@light162 data&#93;&#35; echo stat|nc localhost 2182</p>

<p>Zookeeper version: 3.3.6-1366786, built on 07/29/2012 06:22 GMT</p>

<p>Clients:</p>

<p>/0:0:0:0:0:0:0:1:39374&#91;0&#93;(queued=0,recved=1,sent=0)</p>

<p>Latency min/avg/max: 0/0/0</p>

<p>Received: 2</p>

<p>Sent: 1</p>

<p>Outstanding: 0</p>

<p>Zxid: 0x100000000</p>

<p>Mode: leader</p>

<p>Node count: 4</p>

<h3>说明</h3>

<h1>Mongodb安装配置</h1>

<h2>Mongodb下载</h2>

<h3>流程说明</h3>

<h1>Redis安装配置</h1>

<h2>Redis下载</h2>

<h3>流程说明</h3>

<p>\$ wget http://download.redis.io/releases/redis-3.2.0.tar.gz</p>

<p>\$ tar xzf redis-3.2.0.tar.gz</p>

<p>\$ cd redis-3.2.0</p>

<p>\$ make</p>

<h1>Codis安装配置</h1>

<h2>Codis下载</h2>

<h3>流程说明</h3>

<h1>SSL/TLS Certificates</h1>

<h2>let's encrypt</h2>

<p>Let’s encrypt 申请的证书有效期为90天。</p>

<h3>创建HTTPS证书</h3>

<ul>
<li>下载 letsencrypt</li>
</ul>

<p>&#91;root@light162 \~&#93;&#35;git clone
https://github.com/letsencrypt/letsencrypt</p>

<p>&#91;root@light162 \~&#93;&#35;cd letsencrypt/</p>

<ul>
<li>运行letsencrypt</li>
</ul>

<p>&#91;root@light162 letsencrypt&#93;&#35;./letsencrypt-auto certonly -a manual</p>

<p>Checking for new version...</p>

<p>Creating virtual environment...</p>

<p>Installing Python packages...</p>

<p><img src="media/image1.png" alt="" />{width="6.302083333333333in"
height="3.5930555555555554in"}</p>

<p><img src="media/image2.png" alt="" />{width="6.302083333333333in"
height="3.5930555555555554in"}</p>

<p><img src="media/image3.png" alt="" />{width="6.302083333333333in"
height="3.5930555555555554in"}</p>

<p><img src="media/image4.png" alt="" />{width="6.302083333333333in"
height="3.604861111111111in"}</p>

<p>Make sure your web server displays the following content at</p>

<p>http://www.lightheart.com.cn/.well-known/acme-challenge/9QQtWhouc&#95;0yIwwDId2fx9MjdziNuYXWXL3ZE&#95;UnlMY
before continuing:</p>

<p>9QQtWhouc&#95;0yIwwDId2fx9MjdziNuYXWXL3ZE&#95;UnlMY.TxdhvpDCGsU1MlHlAByz3OnHpDi1nZcXBFVW4yVDk7k</p>

<p>If you don't have HTTP server configured, you can run the following</p>

<p>command on the target server (as root):</p>

<p>mkdir -p /tmp/letsencrypt/public&#95;html/.well-known/acme-challenge</p>

<p>cd /tmp/letsencrypt/public&#95;html</p>

<p>printf "%s"
9QQtWhouc&#95;0yIwwDId2fx9MjdziNuYXWXL3ZE&#95;UnlMY.TxdhvpDCGsU1MlHlAByz3OnHpDi1nZcXBFVW4yVDk7k
&gt;
.well-known/acme-challenge/9QQtWhouc&#95;0yIwwDId2fx9MjdziNuYXWXL3ZE&#95;UnlMY</p>

<p>&#35; run only once per server:</p>

<p>\$(command -v python2 || command -v python2.7 || command -v python2.6)
-c &#92;</p>

<p>"import BaseHTTPServer, SimpleHTTPServer; &#92;</p>

<p>s = BaseHTTPServer.HTTPServer(('', 80),
SimpleHTTPServer.SimpleHTTPRequestHandler); &#92;</p>

<p>s.serve&#95;forever()"</p>

<p>Press ENTER to continue</p>

<ul>
<li>nginx配置,配置完成后执行Enter</li>
</ul>

<blockquote>
  <p>在lightheart.com.cn 对应的服务器上面根据上面信息配置nginx的80服务上</p>
</blockquote>

<p>location '/.well-known/acme-challenge' {</p>

<p>default&#95;type "text/plain";</p>

<p>root /tmp/letsencrypt-auto;</p>

<p>}</p>

<p>&#91;medical@lightdbm1 \~&#93;\$ mkdir -p
/tmp/letsencrypt-auto/.well-known/acme-challenge</p>

<p>&#91;medical@lightdbm1 \~&#93;\$ cd /tmp/letsencrypt-auto/</p>

<p>&#91;root@lightdbm1 letsencrypt-auto&#93;&#35; printf "%s"
9QQtWhouc&#95;0yIwwDId2fx9MjdziNuYXWXL3ZE&#95;UnlMY.TxdhvpDCGsU1MlHlAByz3OnHpDi1nZcXBFVW4yVDk7k
&gt;
.well-known/acme-challenge/9QQtWhouc&#95;0yIwwDId2fx9MjdziNuYXWXL3ZE&#95;UnlMY</p>

<ul>
<li>根据提示反复执行（多个域名配置时）,完成后如下</li>
</ul>

<p>IMPORTANT NOTES:</p>

<ul>
<li>Congratulations! Your certificate and chain have been saved at</li>
</ul>

<p>/etc/letsencrypt/live/www.lightheart.com.cn/fullchain.pem. Your</p>

<p>cert will expire on 2016-08-07. To obtain a new version of the</p>

<p>certificate in the future, simply run Let's Encrypt again.</p>

<ul>
<li>If you lose your account credentials, you can recover through</li>
</ul>

<p>e-mails sent to lig@lightheart.com.cn.</p>

<ul>
<li>Your account credentials have been saved in your Let's Encrypt</li>
</ul>

<p>configuration directory at /etc/letsencrypt. You should make a</p>

<p>secure backup of this folder now. This configuration directory will</p>

<p>also contain certificates and private keys obtained by Let's</p>

<p>Encrypt so making regular backups of this folder is ideal.</p>

<ul>
<li>If you like Let's Encrypt, please consider supporting our work by:</li>
</ul>

<p>Donating to ISRG / Let's Encrypt: https://letsencrypt.org/donate</p>

<p>Donating to EFF: https://eff.org/donate-le</p>

<ul>
<li>下载证书完成，软连接到在/etc/letsencrypt/live/目录下，一共4个文件</li>
</ul>

<p>cert.pem - Apache服务器端证书</p>

<p>chain.pem - Apache根证书和中继证书</p>

<p>fullchain.pem - Nginx所需要ssl&#95;certificate文件</p>

<p>privkey.pem - 安全证书KEY文件</p>

<h3>配置Nginx服务</h3>

<ul>
<li>配置nginx ssl.conf</li>
</ul>

<p>server {</p>

<p>listen 443 ssl;</p>

<p>server&#95;name www.lightheart.com.cn;</p>

<p>ssl on;</p>

<p>ssl&#95;certificate
/etc/letsencrypt/live/www.lightheart.com.cn/fullchain.pem;</p>

<p>ssl&#95;certificate&#95;key
/etc/letsencrypt/live/www.lightheart.com.cn/privkey.pem;</p>

<p>ssl&#95;protocols TLSv1 TLSv1.1 TLSv1.2;</p>

<p>ssl&#95;prefer&#95;server&#95;ciphers on;</p>

<p>ssl&#95;ciphers 'EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH';</p>

<p>&#35;charset koi8-r;</p>

<p>&#35;access&#95;log /var/log/nginx/log/host.access.log main;</p>

<p>location / {</p>

<p>root /usr/share/nginx/html;</p>

<p>index index.html index.htm;</p>

<p>}</p>

<p>}</p>

<h3>自动续签HTTPS证书</h3>

<ul>
<li>创建续签文件</li>
</ul>

<p>&#91;root@light162 \~&#93;&#35;cp /root/letsencrypt/examples/cli.ini
/usr/local/etc/le-renew-webroot.ini</p>

<p>&#91;root@light162 \~&#93;&#35;vi /usr/local/etc/le-renew-webroot.ini</p>

<p>rsa-key-size = 4096</p>

<p>email = lig@lightheart.com.cn</p>

<p>domains = www.lightheart.com.cn</p>

<p>webroot-path = /usr/share/nginx/html</p>

<ul>
<li>续签命令</li>
</ul>

<p>./letsencrypt-auto certonly -a webroot –agree-tos –renew-by-default
–webroot-path=/usr/share/nginx/html -d lightheart.com.cn -d
www.lightheart.com.cn</p>

<p>或</p>

<p>./letsencrypt-auto certonly -a webroot –renew-by-default –config
/usr/local/etc/le-renew-webroot.ini</p>

<p>service nginx reload</p>

<ul>
<li>下载自动续签脚本</li>
</ul>

<p>&#91;root@light162 \~&#93;&#35;curl -L -o /usr/local/sbin/le-renew-webroot
https://gist.githubusercontent.com/thisismitch/e1b603165523df66d5cc/raw/fbffbf358e96110d5566f13677d9bd5f4f65794c/le-renew-webroot</p>

<p>&#91;root@light162 \~&#93;&#35;chmod +x /usr/local/sbin/le-renew-webroot</p>

<p>&#91;root@light162 \~&#93;&#35;le-renew-webroot</p>

<p>Checking expiration date for www.lightheart.com.cn...</p>

<p>The certificate is up to date, no need for renewal (89 days left).</p>

<ul>
<li>创建定时任务：</li>
</ul>

<p>crontab -e</p>

<p>添加下面一行，让每周一早上 2 点 30 分运行一次，并记录到日志文件中。</p>

<p>30 2 &#42; &#42; 1 /usr/local/sbin/le-renew-webroot &gt;&gt;
/var/log/le-renewal.log</p>

<h2>其他</h2>

<h3>其他流程说明</h3>

<h1>VPN安装配置</h1>

<h2>Pptp</h2>

<p>检查内核MPPE补丁</p>

<p>&#35; modprobe ppp-compress-18 &amp;&amp; echo 'ok!!!'</p>

<p>&#35;yum install ppp</p>

<p><a href="http://poptop.sourceforge.net/yum/stable/rhel6Server/x86_64/"><em>http://poptop.sourceforge.net/yum/stable/rhel6Server/x86&#95;64/</em></a></p>

<p>&#35; vi /etc/pptpd.conf</p>

<p>localip 192.168.0.1</p>

<p>remoteip 192.168.0.234-238,192.168.0.245</p>

<p>&#35; vi /etc/ppp/options.pptpd</p>

<p>ms-dns 8.8.8.8</p>

<p>ms-dns 8.8.4.4</p>

<p>设置用户</p>

<p>&#35; vi /etc/ppp/chap-secrets 或</p>

<p>&#35; vpnuser add lig lig&#42;&#42;&#42;</p>

<p>设置内核，支持转发命令</p>

<p>&#35; vi /etc/sysctl.conf</p>

<blockquote>
  <p>将net.ipv4.ip&#95;forward=0 \
  改成net.ipv4.ip&#95;forward=1 \
  将net.ipv4.tcp&#95;syncookies= 1 \
  改成 &#35;net.ipv4.tcp&#95;syncookies= 1 </p>
</blockquote>

<p>防火墙配置</p>

<p>iptables -A INPUT -i eth0 -p tcp --dport 1723 -j ACCEPT</p>

<p>iptables -A INPUT -i eth0 -p gre -j ACCEPT</p>

<p>iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE</p>

<p>iptables -A FORWARD -i ppp+ -o eth0 -j ACCEPT</p>

<p>iptables -A FORWARD -i eth0 -o ppp+ -j ACCEPT</p>

<p>service iptables save</p>

<p>service iptables restart</p>

<p>&#35; service pptpd start</p>

<p>&#35; chkconfig pptpd on</p>

<p>&#35; chkconfig iptables on</p>

<h1>Github</h1>

<p>&#35;ssh-keygen -t rsa -C "airshiplay@126.com"</p>

<h1>Docker</h1>

<p>http://wiki.jikexueyuan.com/project/docker/userguide/README.html</p>

<p>\$ sudo yum install docker</p>

<p>\$ sudo service docker start</p>

<p>\$ sudo chkconfig docker on</p>

<p>\$ sudo docker pull centos</p>

<p>\$ sudo docker images centos</p>

<p>\$ sudo docker run -i -t centos /bin/bash</p>

<h1>ansible</h1>

<h2>基础配置</h2>

<h1>Jenkins</h1>

<p>http://pkg.jenkins-ci.org/redhat-stable/</p>

<blockquote>
  <p>sudo wget -O /etc/yum.repos.d/jenkins.repo
  http://pkg.jenkins.io/redhat-stable/jenkins.repo</p>
  
  <p>sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key</p>
  
  <p>yum install jenkins</p>
</blockquote>

<p>Linux Android SDK</p>

<p>yum install glibc.i686</p>

<p>yum install zlib.i686 libstdc++.i686 --setopt=protected&#95;multilib=false</p>
";}i:2;i:3;i:3;s:31396:"
智慧医疗安装部署文档V1.0.0

  -------------- ----------
  系统名称       智慧医疗
  项目负责人     
  作者           
  文档提交日期   2015-8
  -------------- ----------

赛特斯信息科技股份有限公司

（版权所有，翻版必究）

修订记录

  ---- -------- -------------- ---------- --------
  No   修改后   修改内容简介   修改日期   修改人
                                          
       版本号                             

  1    1.0.0    初稿                      李根

                                          
  ---- -------- -------------- ---------- --------

目录

[*1* *背景* 3](#背景)

[*2* *名词解析* 3](#名词解析)

[*3* *系统配置* 3](#系统配置)

> [*3.1* *CentOS 6.7系统* 3](#centos-6.7系统)
>
> [*3.1.1* *HOSTS配置* 3](#hosts配置)
>
> [*3.1.2* *主机名配置* 4](#主机名配置)
>
> [*3.1.3* *命令提示符修改* 4](#命令提示符修改)
>
> [*3.2* *软件版本* 4](#cenos-7.0系统)
>
> [*3.3* *OpenSSH免密码登录* 5](#openssh免密码登录)
>
> [*3.3.1* *RSA认证* 5](#rsa认证)
>
> [*3.3.2* *DSA认证* 6](#dsa认证)

[*4* *JDK7安装* 7](#jdk7安装)

> [*4.1* *JDK下载* 7](#jdk下载)
>
> [*4.2* *JDK安装配置* 7](#jdk安装配置)

[*5* *Tomcat安装配置* 9](#tomcat安装配置)

> [*5.1* *Tomcat下载* 9](#tomcat下载)
>
> [*5.2* *Tomcat安装配置* 9](#tomcat安装配置-1)
>
> [*5.3* *Tomcat Session共享* 10](#tomcat-session共享)
>
> [*5.3.1* *Redis Session共享* 10](#redis-session共享)

[*6* *MySQL安装配置* 11](#mysql安装配置)

> [*6.1* *MySQL下载* 11](#mysql下载)
>
> [*6.2* *MySQL安装配置* 11](#mysql安装配置-1)
>
> [*6.2.1* *MySQL编码查询* 11](#mysql编码查询)
>
> [*6.2.2* *MySQL密码修改* 13](#mysql密码修改)
>
> [*6.2.3* *MySQL远程登录* 13](#mysql远程登录)

[*7* *Nginx安装配置* 14](#postgresql安装配置)

> [*7.1* *Nginx下载* 14](#nginx下载)
>
> [*7.2* *Nginx YUM安装方法* 14](#nginx-yum安装)
>
> [*7.3* *Nginx编译安装方法* 15](#nginx编译安装方法)

[*8* *Zabbix安装配置* 16](#zabbix安装配置)

> [*8.1* *HOSTS配置* 16](#hosts配置-1)
>
> [*8.1.1* *流程说明* 16](#流程说明)

[*9* *ZooKeeper安装配置* 16](#zookeeper安装配置)

> [*9.1* *ZooKeeper下载* 16](#zookeeper下载)
>
> [*9.1.1* *流程说明* 16](#伪集群安装流程步骤)

[*10* *Redis安装配置* 17](#redis安装配置)

> [*10.1* *Redis下载* 17](#redis下载)
>
> [*10.1.1* *流程说明* 17](#流程说明-2)

[*11* *Codis安装配置* 17](#codis安装配置)

> [*11.1* *Codis下载* 17](#codis下载)
>
> [*11.1.1* *流程说明* 17](#流程说明-3)

背景
====

本文旨在智慧社区卡片的方案具体设计。

名词解析
========

-   APP ID:是应用在开发者中心中唯一数字ID

系统配置
========

  服务器名称   主机名    IP              服务器域名   
  ------------ --------- --------------- ------------ --
  服务器A      host201   172.17.40.201   host201      
  服务器B      host202   172.17.40.202   host202      
  服务器C      host203   172.17.40.202   host203      

CentOS 6.7系统
--------------

CentOS系统采用6.7系统，安装选择Software Development Workstation
版本（包含基本系统、虚拟化平台、桌面环境、开放工具等1538个软件包）。yum
update 更新安装源。

### HOSTS配置

1.  命令 vi /etc/hosts

2.  修改hosts文件，新增 三行，内容如下

> 172.17.40.201 host201\
> 172.17.40.202 host202\
> 172.17.40.203 host203

1.  esc，输入wq 保存文件，并退出。

2.  命令 ping host201 或 ping host202 或ping host203 ，确认是否生效

其他服务器都进行对应修改。

### 主机名配置

1.  命令 vi /etc/sysconfig/network

2.  修改network文件，修改HOSTNAME行，内容如下

> HOSTNAME=host201

1.  esc，输入wq 保存文件，并退出。

2.  命令hostname host201

3.  重启系统 命令 reboot，完成后命令 hostname 确认是否生效

其他服务器都进行对应修改。

### 命令提示符修改

1.  命令 echo \$PS1，显示当前命令提示符格式

2.  命令 vi \~/.bashrc，修改.bashrc文件，增加行，内容如下

> \#export PS1='\[\\u@\\h \\W\]\\\$'
>
> 字符含义：\\u显示当前用户帐号，\\h显示当前主机名，\\w显示当前完整工作路径（\\W显示当前工作路径），\\\$显示’\$’符号

1.  esc，输入wq 保存文件，并退出。

2.  重新登录控制台，确认是否生效命令

其他服务器都进行对应修改。

CenOS 7.0系统
-------------

1.  **EPEL yum**

**http://fedoraproject.org/wiki/EPEL**

rpm -Uvh
https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

1.  **网络配置**

vi /etc/sysconfig/network-scripts/ifcfg-em4

TYPE=Ethernet

BOOTPROTO=none

DEFROUTE=yes

IPV4\_FAILURE\_FATAL=no

IPV6INIT=yes

IPV6\_AUTOCONF=yes

IPV6\_DEFROUTE=yes

IPV6\_FAILURE\_FATAL=no

NAME=em4

UUID=3c25b407-ddaa-4128-a4bb-7100d761451e

DEVICE=em4

ONBOOT=yes

IPADDR=172.16.1.202

PREFIX=24

GATEWAY=172.16.1.1

DNS1=114.114.114.114

IPV6\_PEERDNS=yes

IPV6\_PEERROUTES=yes

\#service network restart

1.  **用户管理**

添加用户

adduser {username}

修改密码

passwd {username}

删除用户

userdel {username}

**禁止ROOT远程登录**

\#**vi /etc/ssh/sshd\_config**

**修改为PermitRootLogin no**

**service sshd restart**

1.  **防火墙配置**

1、直接关闭firewalld防火墙

\#systemctl stop firewalld.service \#停止firewall

\#systemctl disable firewalld.service \#禁止firewall开机启动

2、设置 iptables service

\#yum -y install iptables-services

如果要修改防火墙配置，如增加防火墙端口3306

\#vi /etc/sysconfig/iptables

增加规则

-A INPUT -m state --state NEW -m tcp -p tcp --dport 3306 -j ACCEPT

保存退出后

\#systemctl restart iptables.service \#重启防火墙使配置生效

\#systemctl enable iptables.service \#设置防火墙开机启动

### SELINUX关闭

1、查看selinux状态

查看selinux的详细状态，如果为enable则表示为开启

\# /usr/sbin/sestatus -v

2、查看selinux的模式

\# getenforce

3、永久性关闭（这样需要重启服务器后生效）

\# sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

4、临时性关闭（立即生效，但是重启服务器后失效）

\# setenforce 0 \#设置selinux为permissive模式（即关闭）

\# setenforce 1 \#设置selinux为enforcing模式（即开启）

或者 增加NGINX网络访问

setsebool -P httpd\_can\_network\_connect 1

Linux命令
---------

Linux版本查看

\# uname –a

\# more /etc/redhat-release

\#lsb\_release –a

\#yum install lsb

getconf LONG\_BIT 

64位系统运行32位软件。

\# **yum install glibc\*.i686**\
\# **yum install zlib\*.i686**\
\# **yum install libstdc++.so.6**

软件版本
--------

  软件名称    软件版本   软件文件名                    安装路径
  ----------- ---------- ----------------------------- -------------------
  Java        jdk-7u79   jdk-7u79-linux-x64.tar.gz     usr/local/java/
  Tomcat      7.0.63     apache-tomcat-7.0.63.tar.gz   usr/local/tomcat/
  Nginx       1.8.0                                    usr/local/nginx/
  MySQL       5.5                                      
  ZooKeeper                                            
  Redis                                                

OpenSSH免密码登录
-----------------

OpenSSH 密钥管理,参考

http://www.ibm.com/developerworks/cn/linux/security/openssh/part1/index.html

http://www.ibm.com/developerworks/cn/linux/security/openssh/part2/index.html

http://www.ibm.com/developerworks/cn/linux/security/openssh/part3/index.html

### RSA认证

A机器客户端，B机器服务端

/etc/init.d/sshd restart 

1.  A机器root用户执行ssh-keygen命令回车，生成安全信任关系证书

> \# ssh-keygen -t rsa
>
> Generating public/private rsa key pair.\
> Enter file in which to save the key (/root/.ssh/id\_rsa):\
> Enter passphrase (empty for no passphrase):\
> Enter same passphrase again:\
> Your identification has been saved in /root/.ssh/id\_rsa.\
> Your public key has been saved in /root/.ssh/id\_rsa.pub.\
> The key fingerprint is:\
> f3:5d:c7:e2:da:47:e9:17:52:2e:49:92:88:c6:a9:6e lig@ligdeMBP.lan\
> The key's randomart image is:\
> +--\[ RSA 2048\]----+\
> | |\
> | |\
> | . o . . |\
> | = . o . o |\
> | o S o \* +|\
> | . o . \* \*.|\
> | . . . =..|\
> | E o .o|\
> | . . ...|\
> +-----------------+
>
> 在程序提示输入passphrase时直接输入回车，表示无证书密码。
>
> 上述命令将生成私钥证书id\_rsa和公钥证书id\_rsa.pub，存放在用户\~/.ssh目录下

1.  查看\~/.ssh生成的密钥文件

> \# lig\$ cd \~/.ssh\
> \# ls -l\
> total 24\
> -rw-r--r-- 1 root root 396 Aug 19 14:10 authorized\_keys\
> -rw------- 1 root root 1671 Aug 19 14:10 id\_rsa\
> -rw-r--r-- 1 root root 396 Aug 19 14:10 id\_rsa.pub\
> -rw-r--r-- 1 root root 391 Aug 19 14:13 known\_hosts\
> \#

1.  A对B建立信任关系

> 将公钥证书id\_rsa.pub复制到机器B的root/.ssh/目录下，同时将文件名更换为
> authorized\_keys，此时需要输入B机器的root用户密码（还未建立信任关系）。建立了客户端到服务器端的信任关系后，客户端就可以不用再输入密码，就可以从服务器端拷贝数据了。

scp -r id\_rsa.pub 10.0.0.188:/root/.ssh/<span id="OLE_LINK3"
class="anchor"><span id="OLE_LINK4"
class="anchor"></span></span>authorized\_keys

> sudo chmod 644 \~/.ssh/authorized\_keys
>
> sudo chmod 700 \~/.ssh

1.  服务器端验证

> ssh localhost

### DSA认证

JDK7安装
========

JDK下载
-------

JDK安装配置
-----------

1.  卸载自带OpenJDK

> 查看已安装的jdk文件
>
> rpm -qa | grep jdk
>
> java-1.6.0-openjdk-1.6.0.35-1.13.7.1.el6\_6.x86\_64\
> java-1.6.0-openjdk-javadoc-1.6.0.35-1.13.7.1.el6\_6.x86\_64\
> java-1.6.0-openjdk-devel-1.6.0.35-1.13.7.1.el6\_6.x86\_64\
> java-1.7.0-openjdk-devel-1.7.0.79-2.5.5.4.el6.x86\_64\
> java-1.7.0-openjdk-1.7.0.79-2.5.5.4.el6.x86\_64
>
> rpm -qa | grep gcj
>
> java-1.5.0-gcj-1.5.0.0-29.1.el6.x86\_64

RPM包安装

> \[root@light162 alternatives\]\#rpm -ivh jdk-8u91-linux-x64.rpm

1.  

> 安装到/usr/local/java目录下
>
> 服务器命令：
>
> \[root@medical-server-pc-130 \~\]\# cd /usr/local/
>
> \[root@medical-server-pc-130 local\]\# mkdir java
>
> \[root@medical-server-pc-130 local\]\# cd java
>
> \[root@medical-server-pc-130 java\]\#
>
> 客户端上传文件到服务器
>
> scp jdk-7u79-linux-x64.tar.gz root@192.168.1.130:/usr/local/java/
>
> 服务器命令：
>
> 解压文件
>
> \[root@medical-server-pc-130 java\]\# tar zxvf
> jdk-7u79-linux-x64.tar.gz
>
> \[root@medical-server-pc-130 java\]\# rm jdk-7u79-linux-x64.tar.gz
>
> JDK 安装目录为：
>
> /usr/local/java/jdk1.7.0\_79

1.  配置

2.  配置 /etc/profile文件尾部增加

\#vi /etc/profile

export JAVA\_HOME=/usr/local/java/jdk1.7.0\_79

export PATH=\$JAVA\_HOME/bin: \$PATH

export CLASSPATH=.:\$JAVA\_HOME/lib:\$JAVA\_HOME/jre/lib

\#source /etc/profile

\#echo "\#\#\#\#\#\#\#JAVA\_HOME\#\#\#\#\#\#\#"&gt;&gt; /etc/profile

\#echo " export JAVA\_HOME=/usr/local/java/jdk1.7.0\_79"&gt;&gt;
/etc/profile

\#echo " export PATH=\$JAVA\_HOME/bin:\$PATH "&gt;&gt; /etc/profile

\#echo " export CLASSPATH=.:\$JAVA\_HOME/lib:\$JAVA\_HOME/jre/lib
"&gt;&gt; /etc/profile

\#source /etc/profile

1.  验证

执行java –version 命令，查看版本信息

\[root@medical-server-pc-130 jdk1.7.0\_79\]\# java -version

java version "1.7.0\_79"\
Java(TM) SE Runtime Environment (build 1.7.0\_79-b15)\
Java HotSpot(TM) 64-Bit Server VM (build 24.79-b02, mixed mode)

Tomcat安装配置
==============

Tomcat下载
----------

Tomcat安装配置
--------------

1.  上传解压文件到/usr/local/tomcat

> scp apache-tomcat-7.0.63.tar.gz root@192.168.1.130:/usr/local/tomcat/

1.  配置/etc/profile 在文件末尾添加

> \#vim /etc/profile\
> export TOMCAT\_HOME=/usr/local/tomcat/apache-tomcat-7.0.63\
> \#source /etc/profile\
> \#cd /apache-tomcat/bin/\
> \#chmod 777 \*.sh\
> mv ROOT ROOT.old
>
> \#echo "\#\#\#\#\#\#\# TOMCAT \_HOME\#\#\#\#\#\#\#"&gt;&gt;
> /etc/profile
>
> \#echo " export
> TOMCAT\_HOME=/usr/local/tomcat/apache-tomcat-7.0.63"&gt;&gt;
> /etc/profile

1.  修改内存配置

bin/catalina.sh文件修改JAVA\_OPTS,新增如下

\# ----- Execute The Requested Command
-----------------------------------------

JAVA\_OPTS="\$JAVA\_OPTS -server -XX:PermSize=128M -XX:MaxPermSize=512m"

1.  防火墙，增加例外

iptables -I INPUT 5 -p tcp --dport 8080 -j ACCEPT

1.  启动tomcat

> \[root@medical-server-pc-130 bin\]\# ./startup.sh\
> Using CATALINA\_BASE: /usr/local/tomcat/apache-tomcat-7.0.63\
> Using CATALINA\_HOME: /usr/local/tomcat/apache-tomcat-7.0.63\
> Using CATALINA\_TMPDIR: /usr/local/tomcat/apache-tomcat-7.0.63/temp\
> Using JRE\_HOME: /usr/local/java/jdk1.7.0\_79\
> Using CLASSPATH:
> /usr/local/tomcat/apache-tomcat-7.0.63/bin/bootstrap.jar:/usr/local/tomcat/apache-tomcat-7.0.63/bin/tomcat-juli.jar\
> Tomcat started.

浏览器访问：http://ip:8080

Tomcat Session共享
------------------

### Redis Session共享

MySQL安装配置
=============

MySQL下载
---------

YUM下载安装地址

http://dev.mysql.com/downloads/repo/yum/

CentOS7 下载安装

http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm

\[root@light162 \~\]\#yum install -y mysql-community-server

foTjTeCZf9

mysql-community-common-5.7.12-1.el7.x86\_64.rpm
mysql-community-libs-5.7.12-1.el7.x86\_64.rpm
mysql-community-libs-compat-5.7.12-1.el7.x86\_64.rpm

mysql-community-client-5.7.12-1.el7.x86\_64.rpm

mysql-community-server-5.7.12-1.el7.x86\_64.rpm

MySQL安装配置
-------------

yum install -y mysql-server

mysqladmin -u root password 'root'

service mysqld restart

防火墙设置

iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 3306 -j
ACCEPT

update mysql.user set password=PASSWORD('root') where user='root'

mysql 5.7生成随机密码 /var/log/mysqld.log

A temporary password is generated for root@localhost : foTjTeCZf9/\*

grant all privileges on media.\* to medical\_app@'%'  identified by
'medical\_app' with grant option;

### MySQL编码查询

mysql&gt;SHOW VARIABLES LIKE 'character\_set\_%';

+--------------------------+-----------------------------------------------+

| Variable\_name | Value |

+--------------------------+-----------------------------------------------+

| character\_set\_client | utf8 |

| character\_set\_connection | utf8 |

| character\_set\_database | utf8 |

| character\_set\_filesystem | binary |

| character\_set\_results | utf8 |

| character\_set\_server | utf8 |

| character\_set\_system | utf8 |

| character\_sets\_dir |
D:\\server\\mysql-5.6.26-winx64\\share\\charsets\\ |

+--------------------------+-----------------------------------------------+

8 rows in set (0.00 sec)

mysql&gt;SHOW VARIABLES LIKE 'collation\_%';

+----------------------+-----------------+

| Variable\_name | Value |

+----------------------+-----------------+

| collation\_connection | utf8\_general\_ci |

| collation\_database | utf8\_general\_ci |

| collation\_server | utf8\_general\_ci |

+----------------------+-----------------+

3 rows in set (0.01 sec)

修改配置文件 /etc/my.cnf

\[mysqld\]\
port 3306\
datadir=/var/lib/mysql\
socket=/var/lib/mysql/mysql.sock\
user=mysql\
\# Disabling symbolic-links is recommended to prevent assorted security
risks\
symbolic-links=0\
character\_set\_server = utf8\
\[mysqld\_safe\]\
log-error=/var/log/mysqld.log\
pid-file=/var/run/mysqld/mysqld.pid\
\[mysql\]\
default-character-set = utf8

### MySQL密码修改

mysqladmin -u root password 'root'

mysqladmin -u root password ' root '

SET PASSWORD FOR 'root'@'localhost'=PASSWORD('root');

SET PASSWORD FOR 'root'@'%'=PASSWORD('root');

删除匿名用户

delete from mysql.user where user='';　

flush privileges;

MYSQL5.7修改密码

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

vi /etc/my.cnf

validate\_password = OFF;

### MySQL远程登录

grant all privileges on \*.\* to 'root'@'%' identified by 'root' with
grant option;

flush privileges;

grant all privileges on media.\* to medical\_app@'%'  identified by
'medical\_app' with grant option;

创建数据库

CREATE DATABASE IF NOT EXISTS media DEFAULT CHARSET utf8 COLLATE
utf8\_general\_ci;

执行SQL文件

mysql -h rdsjruzybjruzyb.mysql.rds.aliyuncs.com -u root -p
--default-character-set=utf8 –A source /root/Job.sql

导出SQL结构数据

mysqldump -u root -p media --default-character-set=utf8 &gt;source.sql

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

Postgresql安装配置
==================

\#yum list postgres\*

\#yum install postgresql-server

yum install postgresql-contrib

\#service postgresql initdb

\#service postgresql restart

增加用户
--------

sudo -u postgres createuser --superuser actor

sudo -u postgres psql postgres --command '\\password actor'

sudo -u postgres createdb actor -O actor

pg\_hba.conf

host all all 127.0.0.1/32 md5

host all all 172.19.1.50 md5

Nginx安装配置
=============

Nginx下载
---------

Nginx YUM安装
-------------

### Centos6

nginx的yum在线安装

wget
http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm

安装源库

chmod +x nginx-release-centos-6-0.el6.ngx.noarch.rpm 

rpm -i nginx-release-centos-6-0.el6.ngx.noarch.rpm 

安装nginx

yum install nginx

### Centos7 

\#rpm –Uvh
http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

安装nginx

yum install nginx

安装完成后

默认nginx配置文件: /etc/nginx/nginx.conf        
【nginx主要的配置文件】 

默认nginx的ssl配置文件: /etc/nginx/conf.d/ssl.conf
【配置SSL证书的，也可以并入到nginx.conf文件里】 

默认nginx的虚拟主机配置文件: /etc/nginx/conf.d/virtual.conf
【如同Apache的虚拟主机配置，也可以并入到nginx.conf文件里】 

默认的web\_root文件夹路径: /usr/share/nginx/html
【web目录夹，放置Magento主程序】 

配置iptables

iptables -I INPUT 5 -p tcp --dport 80 -j ACCEPT

启动nginx

service nginx start

打开IP地址 可见“Welcome to nginx!”表示安装成功。

Nginx编译安装方法
-----------------

http://www.pcre.org pcre8.37 下载

yum -y install perl-devel perl-ExtUtils-Embed

yum -y install gcc gcc-c++

解压

1.  上传文件

scp nginx-1.8.0.tar.gz root@192.168.1.130:/usr/local/soft/

1.  解压

tar -zxvf nginx-1.8.0.tar.gz

cd nginx-1.8.0

<span id="OLE_LINK1" class="anchor"><span id="OLE_LINK2"
class="anchor"></span></span>./configure --prefix=/usr/local/nginx \\\
--with-http\_ssl\_module \\\
--with-http\_realip\_module \\\
--with-http\_addition\_module \\\
--with-http\_sub\_module \\\
--with-http\_dav\_module \\\
--with-http\_flv\_module \\\
--with-http\_gzip\_static\_module \\\
--with-http\_stub\_status\_module \\\
--with-http\_perl\_module \\\
--with-mail \\\
<span id="OLE_LINK5" class="anchor"><span id="OLE_LINK6"
class="anchor"></span></span>--with-mail\_ssl\_module \\\
--with-pcre=/usr/local/soft/pcre-8.37\\\
--with-openssl=/home/server/openssl-0.9.8zg

> --with-zlib=/root/zlib-1.2.5

make && make install

--with-openssl=/root/<span id="OLE_LINK7" class="anchor"><span
id="OLE_LINK8" class="anchor"></span></span>openssl-0.9.8o \\\
--with-pcre \\\
--with-pcre=/root/pcre-8.10 \\\
--with-zlib=/root/zlib-1.2.5 \\\
--with-http\_geoip\_module

Nginx配置
---------

### 默认主配置

\[root@light162 \~\]\# vi /etc/nginx/nginx.conf

user nginx;

worker\_processes 1;

error\_log /var/log/nginx/error.log warn;

pid /var/run/nginx.pid;

events {

worker\_connections 1024;

}

http {

include /etc/nginx/mime.types;

default\_type application/octet-stream;

log\_format main '\$remote\_addr - \$remote\_user \[\$time\_local\]
"\$request" '

'\$status \$body\_bytes\_sent "\$http\_referer" '

'"\$http\_user\_agent" "\$http\_x\_forwarded\_for"';

access\_log /var/log/nginx/access.log main;

sendfile on;

\#tcp\_nopush on;

keepalive\_timeout 65;

\#gzip on;

include /etc/nginx/conf.d/\*.conf;

}

### HTTP服务配置

\[root@light162 \~\]\# vi /etc/nginx/conf.d/default.conf

server {

listen 80;

server\_name localhost;

\#charset koi8-r;

\#access\_log /var/log/nginx/log/host.access.log main;

location / {

root /usr/share/nginx/html;

index index.html index.htm;

}

\#error\_page 404 /404.html;

\# redirect server error pages to the static page /50x.html

\#

error\_page 500 502 503 504 /50x.html;

location = /50x.html {

root /usr/share/nginx/html;

}

\# proxy the PHP scripts to Apache listening on 127.0.0.1:80

\#

\#location \~ \\.php\$ {

\# proxy\_pass http://127.0.0.1;

\#}

\# pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000

\#

\#location \~ \\.php\$ {

\# root html;

\# fastcgi\_pass 127.0.0.1:9000;

\# fastcgi\_index index.php;

\# fastcgi\_param SCRIPT\_FILENAME /scripts\$fastcgi\_script\_name;

\# include fastcgi\_params;

\#}

\# deny access to .htaccess files, if Apache's document root

\# concurs with nginx's one

\#

\#location \~ /\\.ht {

\# deny all;

\#}

}

### HTTPS服务配置

\[root@light162 \~\]\#vi /etc/nginx/conf.d/www.lightheart.com.cn.conf

server {

listen 443 ssl;

server\_name www.lightheart.com.cn;

ssl on;

ssl\_certificate
/etc/letsencrypt/live/www.lightheart.com.cn/fullchain.pem;

ssl\_certificate\_key
/etc/letsencrypt/live/www.lightheart.com.cn/privkey.pem;

ssl\_protocols TLSv1 TLSv1.1 TLSv1.2;

ssl\_prefer\_server\_ciphers on;

ssl\_ciphers 'EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH';

\#charset koi8-r;

\#access\_log /var/log/nginx/log/host.access.log main;

location / {

root /usr/share/nginx/html;

index index.html index.htm;

}

}

NGINX LUA
---------

Zabbix安装配置
==============

HOSTS配置
---------

### 流程说明

ZooKeeper安装配置
=================

ZooKeeper下载
-------------

### 伪集群安装流程步骤

1.  解压zookeeper-3.3.6

> \[root@light162 \~\]\#tar zookeeper-3.3.6.tar.gz

1.  拷贝三份zookeeper-3.3.6

\[root@light162 data\]\#cp zookeeper-3.3.6-node1 zookeeper-3.4.6-node2
–R

\[root@light162 data\]\#cp zookeeper-3.3.6-node1 zookeeper-3.4.6-node3
–R

1.  修改配置

\#zookeeper-3.3.6-node1的配置

tickTime=2000

initLimit=10

syncLimit=5

dataDir=/root/zookeeper-3.3.6-2181/data

clientPort=2181

server.2181=localhost:2887:3887

server.2182=localhost:2888:3888

server.2183=localhost:2889:3889

\#zookeeper-3.3.6-node2的配置

tickTime=2000

initLimit=10

syncLimit=5

dataDir=/root/zookeeper-3.3.6-2182/data

clientPort=2182

server.2181=localhost:2887:3887

server.2182=localhost:2888:3888

server.2183=localhost:2889:3889

\#zookeeper-3.3.6-node1的配置

tickTime=2000

initLimit=10

syncLimit=5

dataDir=/root/zookeeper-3.3.6-2183/data

clientPort=2183

server.2181=localhost:2887:3887

server.2182=localhost:2888:3888

server.2183=localhost:2889:3889

echo 2181 &gt; /root/zookeeper-3.3.6-2181/data/myid

echo 2182 &gt; /root/zookeeper-3.3.6-2182/data/myid

echo 2183 &gt; /root/zookeeper-3.3.6-2183/data/myid

1.  启动三个zookeeper

\[root@light162 \~\]\#./bin/zkServer.sh start

1.  检查集群状态

echo stat|nc localhost 2181

echo stat|nc localhost 2182

echo stat|nc localhost 2183

\[root@light162 data\]\# echo stat|nc localhost 2182

Zookeeper version: 3.3.6-1366786, built on 07/29/2012 06:22 GMT

Clients:

/0:0:0:0:0:0:0:1:39374\[0\](queued=0,recved=1,sent=0)

Latency min/avg/max: 0/0/0

Received: 2

Sent: 1

Outstanding: 0

Zxid: 0x100000000

Mode: leader

Node count: 4

### 说明

Mongodb安装配置
===============

Mongodb下载
-----------

### 流程说明

Redis安装配置
=============

Redis下载
---------

### 流程说明

\$ wget http://download.redis.io/releases/redis-3.2.0.tar.gz

\$ tar xzf redis-3.2.0.tar.gz

\$ cd redis-3.2.0

\$ make

Codis安装配置
=============

Codis下载
---------

### 流程说明

SSL/TLS Certificates
====================

let's encrypt 
--------------

Let’s encrypt 申请的证书有效期为90天。

### 创建HTTPS证书

-   下载 letsencrypt

\[root@light162 \~\]\#git clone
https://github.com/letsencrypt/letsencrypt

\[root@light162 \~\]\#cd letsencrypt/

-   运行letsencrypt

\[root@light162 letsencrypt\]\#./letsencrypt-auto certonly -a manual

Checking for new version...

Creating virtual environment...

Installing Python packages...

![](media/image1.png){width="6.302083333333333in"
height="3.5930555555555554in"}

![](media/image2.png){width="6.302083333333333in"
height="3.5930555555555554in"}

![](media/image3.png){width="6.302083333333333in"
height="3.5930555555555554in"}

![](media/image4.png){width="6.302083333333333in"
height="3.604861111111111in"}

Make sure your web server displays the following content at

http://www.lightheart.com.cn/.well-known/acme-challenge/9QQtWhouc\_0yIwwDId2fx9MjdziNuYXWXL3ZE\_UnlMY
before continuing:

9QQtWhouc\_0yIwwDId2fx9MjdziNuYXWXL3ZE\_UnlMY.TxdhvpDCGsU1MlHlAByz3OnHpDi1nZcXBFVW4yVDk7k

If you don't have HTTP server configured, you can run the following

command on the target server (as root):

mkdir -p /tmp/letsencrypt/public\_html/.well-known/acme-challenge

cd /tmp/letsencrypt/public\_html

printf "%s"
9QQtWhouc\_0yIwwDId2fx9MjdziNuYXWXL3ZE\_UnlMY.TxdhvpDCGsU1MlHlAByz3OnHpDi1nZcXBFVW4yVDk7k
&gt;
.well-known/acme-challenge/9QQtWhouc\_0yIwwDId2fx9MjdziNuYXWXL3ZE\_UnlMY

\# run only once per server:

\$(command -v python2 || command -v python2.7 || command -v python2.6)
-c \\

"import BaseHTTPServer, SimpleHTTPServer; \\

s = BaseHTTPServer.HTTPServer(('', 80),
SimpleHTTPServer.SimpleHTTPRequestHandler); \\

s.serve\_forever()"

Press ENTER to continue

-   nginx配置,配置完成后执行Enter

> 在lightheart.com.cn 对应的服务器上面根据上面信息配置nginx的80服务上

location '/.well-known/acme-challenge' {

default\_type "text/plain";

root /tmp/letsencrypt-auto;

}

\[medical@lightdbm1 \~\]\$ mkdir -p
/tmp/letsencrypt-auto/.well-known/acme-challenge

\[medical@lightdbm1 \~\]\$ cd /tmp/letsencrypt-auto/

\[root@lightdbm1 letsencrypt-auto\]\# printf "%s"
9QQtWhouc\_0yIwwDId2fx9MjdziNuYXWXL3ZE\_UnlMY.TxdhvpDCGsU1MlHlAByz3OnHpDi1nZcXBFVW4yVDk7k
&gt;
.well-known/acme-challenge/9QQtWhouc\_0yIwwDId2fx9MjdziNuYXWXL3ZE\_UnlMY

-   根据提示反复执行（多个域名配置时）,完成后如下

IMPORTANT NOTES:

- Congratulations! Your certificate and chain have been saved at

/etc/letsencrypt/live/www.lightheart.com.cn/fullchain.pem. Your

cert will expire on 2016-08-07. To obtain a new version of the

certificate in the future, simply run Let's Encrypt again.

- If you lose your account credentials, you can recover through

e-mails sent to lig@lightheart.com.cn.

- Your account credentials have been saved in your Let's Encrypt

configuration directory at /etc/letsencrypt. You should make a

secure backup of this folder now. This configuration directory will

also contain certificates and private keys obtained by Let's

Encrypt so making regular backups of this folder is ideal.

- If you like Let's Encrypt, please consider supporting our work by:

Donating to ISRG / Let's Encrypt: https://letsencrypt.org/donate

Donating to EFF: https://eff.org/donate-le

-   下载证书完成，软连接到在/etc/letsencrypt/live/目录下，一共4个文件

cert.pem - Apache服务器端证书

chain.pem - Apache根证书和中继证书

fullchain.pem - Nginx所需要ssl\_certificate文件

privkey.pem - 安全证书KEY文件

### 配置Nginx服务

-   配置nginx ssl.conf

server {

listen 443 ssl;

server\_name www.lightheart.com.cn;

ssl on;

ssl\_certificate
/etc/letsencrypt/live/www.lightheart.com.cn/fullchain.pem;

ssl\_certificate\_key
/etc/letsencrypt/live/www.lightheart.com.cn/privkey.pem;

ssl\_protocols TLSv1 TLSv1.1 TLSv1.2;

ssl\_prefer\_server\_ciphers on;

ssl\_ciphers 'EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH';

\#charset koi8-r;

\#access\_log /var/log/nginx/log/host.access.log main;

location / {

root /usr/share/nginx/html;

index index.html index.htm;

}

}

### 自动续签HTTPS证书

-   创建续签文件

\[root@light162 \~\]\#cp /root/letsencrypt/examples/cli.ini
/usr/local/etc/le-renew-webroot.ini

\[root@light162 \~\]\#vi /usr/local/etc/le-renew-webroot.ini

rsa-key-size = 4096

email = lig@lightheart.com.cn

domains = www.lightheart.com.cn

webroot-path = /usr/share/nginx/html

-   续签命令

./letsencrypt-auto certonly -a webroot –agree-tos –renew-by-default
–webroot-path=/usr/share/nginx/html -d lightheart.com.cn -d
www.lightheart.com.cn

或

./letsencrypt-auto certonly -a webroot –renew-by-default –config
/usr/local/etc/le-renew-webroot.ini

service nginx reload

-   下载自动续签脚本

\[root@light162 \~\]\#curl -L -o /usr/local/sbin/le-renew-webroot
https://gist.githubusercontent.com/thisismitch/e1b603165523df66d5cc/raw/fbffbf358e96110d5566f13677d9bd5f4f65794c/le-renew-webroot

\[root@light162 \~\]\#chmod +x /usr/local/sbin/le-renew-webroot

\[root@light162 \~\]\#le-renew-webroot

Checking expiration date for www.lightheart.com.cn...

The certificate is up to date, no need for renewal (89 days left).

-   创建定时任务：

crontab -e

添加下面一行，让每周一早上 2 点 30 分运行一次，并记录到日志文件中。

30 2 \* \* 1 /usr/local/sbin/le-renew-webroot &gt;&gt;
/var/log/le-renewal.log

其他 
-----

### 其他流程说明

VPN安装配置
===========

Pptp
----

检查内核MPPE补丁

\# modprobe ppp-compress-18 && echo 'ok!!!'

\#yum install ppp

[*http://poptop.sourceforge.net/yum/stable/rhel6Server/x86\_64/*](http://poptop.sourceforge.net/yum/stable/rhel6Server/x86_64/)

\# vi /etc/pptpd.conf

localip 192.168.0.1

remoteip 192.168.0.234-238,192.168.0.245

\# vi /etc/ppp/options.pptpd

ms-dns 8.8.8.8

ms-dns 8.8.4.4

设置用户

\# vi /etc/ppp/chap-secrets 或

\# vpnuser add lig lig\*\*\*

设置内核，支持转发命令

\# vi /etc/sysctl.conf

> 将net.ipv4.ip\_forward=0 \
> 改成net.ipv4.ip\_forward=1 \
> 将net.ipv4.tcp\_syncookies= 1 \
> 改成 \#net.ipv4.tcp\_syncookies= 1 

防火墙配置

iptables -A INPUT -i eth0 -p tcp --dport 1723 -j ACCEPT

iptables -A INPUT -i eth0 -p gre -j ACCEPT

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

iptables -A FORWARD -i ppp+ -o eth0 -j ACCEPT

iptables -A FORWARD -i eth0 -o ppp+ -j ACCEPT

service iptables save

service iptables restart

\# service pptpd start

\# chkconfig pptpd on

\# chkconfig iptables on

Github
======

\#ssh-keygen -t rsa -C "airshiplay@126.com"

Docker
======

http://wiki.jikexueyuan.com/project/docker/userguide/README.html

\$ sudo yum install docker

\$ sudo service docker start

\$ sudo chkconfig docker on

\$ sudo docker pull centos

\$ sudo docker images centos

\$ sudo docker run -i -t centos /bin/bash

ansible
=======

基础配置
--------

Jenkins
=======

http://pkg.jenkins-ci.org/redhat-stable/

> sudo wget -O /etc/yum.repos.d/jenkins.repo
> http://pkg.jenkins.io/redhat-stable/jenkins.repo
>
> sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
>
> yum install jenkins

Linux Android SDK

yum install glibc.i686

yum install zlib.i686 libstdc++.i686 --setopt=protected\_multilib=false

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:31407;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:31407;}}