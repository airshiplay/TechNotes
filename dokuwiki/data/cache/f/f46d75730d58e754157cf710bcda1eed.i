a:50:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"svn命令";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:27;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"检出代码";i:1;i:1;i:2;i:27;}i:2;i:27;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:27;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:244:"
svn co svn://localhost/svn/url /home/testtools --username admin
svn co http://localhost/svn/testapp --username admin
svn checkout svn://localhost/svn /home/testtools --username admin
svn checkout http://localhost/test/testapp --username admin
";i:1;s:4:"bash";i:2;N;}i:2;i:59;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:318;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"添加新文件";i:1;i:1;i:2;i:318;}i:2;i:318;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:318;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:240:"
svn add test.php                  #添加test.php 
svn commit -m "添加我的测试用test.php" test.php
svn add *.php                    #添加当前目录下所有的php文件
svn commit -m "添加我的测试用全部php文件" *.php
";i:1;s:4:"bash";i:2;N;}i:2;i:355;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:610;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"提交";i:1;i:1;i:2;i:610;}i:2;i:610;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:610;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:532:"
svn commit -m "提交当前目录下的全部在版本控制下的文件" *  # 注意这个*表示全部文件
svn commit -m "提交我的测试用test.php" test.php
svn commit -m "提交我的测试用test.php" -N --no-unlock test.php # 保持锁就用–no-unlock开关
svn ci -m "提交当前目录下的全部在版本控制下的文件" * # 注意这个*表示全部文件
svn ci -m "提交我的测试用test.php" test.php
svn ci -m "提交我的测试用test.php" -N --no-unlock test.php # 保持锁就用–no-unlock开关
";i:1;s:4:"bash";i:2;N;}i:2;i:636;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1183;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"查看文件或者目录状态";i:1;i:1;i:2;i:1183;}i:2;i:1183;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1183;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:637:"
svn st 目录路径/名
svn status 目录路径/名 # 目录下的文件和子目录的状态，正常状态不显示 
　　　　　　　　　　　　　#【?：不在svn的控制中；  M：内容被修改；C：发生冲突；
　　　　　　　　　　　　　　#A：预定加入到版本库；K：被锁定】 
svn  -v 目录路径/名
svn status -v 目录路径/名 # 显示文件和子目录状态
　　　　　　　　　　　　　　#【第一列保持相同，第二列显示工作版本号，
　　　　　　　　　　　　　　　#第三和第四列显示最后一次修改的版本号和修改人】 
";i:1;s:4:"bash";i:2;N;}i:2;i:1235;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1887;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"恢复本地修改";i:1;i:1;i:2;i:1887;}i:2;i:1887;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1887;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1887;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"svn　revert　[";}i:2;i:1920;}i:24;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1936;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"recursive]　文件名";}i:2;i:1938;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1960;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1960;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"注意: 本子命令不会存取网络，并且会解除冲突的状况。但是它不会恢复被删除的目录。";}i:2;i:1962;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2084;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:129:"
svn revert foo.c # 丢弃对一个文件的修改
svn revert --recursive . #恢复一整个目录的文件，. 为当前目录 
";i:1;s:4:"bash";i:2;N;}i:2;i:2084;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2228;}i:32;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:53:"不checkout而查看输出特定文件或URL的内容";i:1;i:1;i:2;i:2228;}i:2;i:2228;}i:33;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2228;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:45:"
svn cat http://localhost/test/readme.txt  #
";i:1;s:4:"bash";i:2;N;}i:2;i:2301;}i:35;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2362;}i:36;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"创建纳入版本控制下的新目录";i:1;i:1;i:2;i:2362;}i:2;i:2362;}i:37;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2362;}i:38;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:222:"
svn mkdir newdir
svn mkdir -m "Making a new dir." svn://localhost/test/newdir 
#注：添加完子目录后，一定要回到根目录更新一下，不然在该目录下提交文件会提示“提交失败”
svn update
";i:1;s:4:"bash";i:2;N;}i:2;i:2423;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2423;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"svn　mkdir　目录名
svn　mkdir　-m　";}i:2;i:2660;}i:41;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2703;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"新增目录备注文本";}i:2;i:2704;}i:43;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2728;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"　http:";}i:2;i:2729;}i:45;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2737;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"目录全路径";}i:2;i:2739;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2739;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2739;}i:49;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2739;}}