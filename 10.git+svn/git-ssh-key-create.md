
git 下载
百度 git下载
https://git-scm.com/downloads
点击 windows  现在版本 2.14.1
exe 安装，直接下一步

到目录右击
git bash here
命令
git init
-------------------------------------------------
window下配置SSH连接GitHub、GitHub配置ssh key--》https://jingyan.baidu.com/article/a65957f4e91ccf24e77f9b11.html
-------------------------------------------------
$ cd ~/.ssh 或cd .ssh   //备注：cd ~ cd 波浪线 这个键盘的 到这个目录
如果没有则提示： No such file or directory
如果有则进入~/.ssh路径下（ls查看当前路径文件，rm * 删除所有文件--》为重新生成准备）
使用下面的语句重新生成ssh key。
ssh-keygen -t rsa -C "249894855@qq.com"
ssh-keygen -t rsa -C jianjun.yan@ifchange.com
(此过程无需输入密码)
在C:\Users\Administrator\.ssh 这个目录下面多了2个文件
id_rsa 私有密钥 id_rsa.pub 共有密钥（复制到github官网Settings→SSH kyes→Add SSH key）
复制id_rsa.pub的公钥内容。 
1) 进入c:/Users/xxxx_000/.ssh/目录下，打开id_rsa.pub文件，全选复制公钥内容。
2) Title自定义，将公钥粘贴到GitHub中Add an SSH key的key输入框，最后“Add Key”。
配置账户
$ git config --global user.name “your_username”  #设置用户名
$ git config --global user.email “your_registered_github_Email”  #设置邮箱地址(建议用注册giuhub的邮箱)
测试ssh keys是否设置成功。
$ ssh -T git@github.com
The authenticity of host 'github.com (192.30.252.129)' can't be established.
RSA key fingerprint is 16:27:xx:xx:xx:xx:xx:4d:eb:df:a6:48.
Are you sure you want to continue connecting (yes/no)? yes #确认你是否继续联系，输入yes
Warning: Permanently added 'github.com,192.30.252.129' (RSA) to the list of known hosts.
Enter passphrase for key '/c/Users/xxxx_000/.ssh/id_rsa':  #生成ssh kye是密码为空则无此项，若设置有密码则有此项且，输入生成ssh key时设置的密码即可。（yjj123456）
Hi xxx! You've successfully authenticated, but GitHub does not provide shell access. #出现词句话，说明设置成功。