a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:29;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"RPM";i:1;i:1;i:2;i:29;}i:2;i:29;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:29;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:171:"The RPM package is tested with Fedora and Centos. Create a new files at /etc/yum.repos.d/SCM-Manager.repo with the following content to install the scm-manager repository:";}i:2;i:47;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:224;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:192:"
[scm-releases]
name=SCM-Manager Releases
baseurl=http://maven.scm-manager.org/nexus/content/repositories/releases
enabled=1
protect=0
gpgcheck=0
metadata_expire=30s
autorefresh=1
type=rpm-md
";i:1;N;i:2;N;}i:2;i:224;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:224;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"After file creation execute the following command to install scm-server:";}i:2;i:425;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:503;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:62:"
# install the scm-server package
sudo yum install scm-server
";i:1;N;i:2;N;}i:2;i:503;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:575;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"DEB";i:1;i:1;i:2;i:575;}i:2;i:575;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:575;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:575;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"The DEB package is tested with Debian and Ubuntu. Execute the following commands to install scm-server:";}i:2;i:593;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:702;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:369:"
# add the scm-manager repository
echo "echo 'deb http://maven.scm-manager.org/nexus/content/repositories/releases ./' >> /etc/apt/sources.list" | sudo sh

# install gpg key for the scm-manager repository
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 D742B261

# update
sudo apt-get update

# install scm-server
sudo apt-get install scm-server
";i:1;N;i:2;N;}i:2;i:702;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1080;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:54:"Migration from ApplicationServer or Standalone version";i:1;i:1;i:2;i:1080;}i:2;i:1080;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1080;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1080;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:704:"To migrate from an existing installation, you have to the following steps:
Stop the old service
Move the folder /opt/scm-server, if it exists
Install the package
Copy the content of your existing scm home directory to /var/lib/scm
Change the owner of the directory and all containing files to scm:scm (chown -R scm:scm /var/lib/scm)
Verify repositoryDirectory in /var/lib/scm/config/[git|hg|svn].xml], make sure they point to respective /var/lib/scm/repositories/[git|hg|svn] and not your old location. Otherwise the repository health check will fail.
Optional: Reapply changes to /opt/scm-server/conf/server-config.xml and /opt/scm-server/conf/logging.xml
Start scm-server (/etc/init.d/scm-server start)";}i:2;i:1149;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1853;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1853;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1853;}}