多个ssh key管理
我们可以在~/.ssh目录下新建一个config文件配置一下，就可以解决问题

具体步骤

生成第一个ssh key(这里我用于github，用的gmail邮箱)

ssh-keygen -t rsa -C "jianjun.yan@ifchange.com"
ssh-keygen -t rsa -C "jianjun.yan@ifchange.com” -f ~/.ssh/id_rsa_ifchange
//执行命令的目录在mac用户根目录
ssh-add ~/.ssh/id_rsa $ ssh-add ~/.ssh/id_rsa_ifchange

# gitlab
Host github.com
Port 22
HostName github.com
PreferredAuthentications publickey
IdentityFile /Users/liminlimin/.ssh/id_rsa
User yjj249894855
 
# http://192.168.1.199:8080
Host http://192.168.1.199:8080
HostName http://192.168.1.199:8080
PreferredAuthentications publickey
IdentityFile /Users/liminlimin/.ssh/id_rsa_ifchange
User yanjianjun