
### 流程
新建文件夹
git init //初始化
git remote add origin git@192.168.39.26:credit_business/saas.git
git remote add origin git@github.com:yjj249894855/yjj_work.git
git remote add origin git@192.168.39.26:caiqiqin/credit_das.git
git remote add origin git@192.168.39.26:caiqiqin/encrypt.git
git remote add origin git@git.koudaikj.com:infrastructure/user-profile.git
git pull --rebase origin master
//git checkout -b master origin/master
查看项目的分支们(包括本地和远程) 
git branch -a
删除本地分支 
git branch -d helibao2
删除远程分支 
git push origin --delete helibao2
从master切换分支
git checkout -b tonglian
把新建的分支push到远端
git push origin tonglian
切换远程分支（创建了本地分支并关联了远程分支）
git checkout -b saas-sms origin/saas-sms

### 远程先开好分支然后拉到本地
git checkout -b feature-branch origin/feature-branch    //检出远程的feature-branch分支到本地
本地先开好分支然后推送到远程
$  git checkout -b feature-branch    //创建并切换到分支feature-branch  
$  git push origin feature-branch:feature-branch    
//推送本地的feature-branch(冒号前面的)分支到远程origin的feature-branch(冒号后面的)分支(没有会自动创建)
<div>
    2018年5月8日 10:10:33
    当前分支临时切换远程分支
    在当前分支
    git stash

    切换回来
    git stash list
    git stash pop stash@{0}  //git stash pop <上一步返回结果>
</div>
<div>
    2018年5月8日 10:10:33
    git add a.txt
    对应
    git reset a.txt
</div>
<div>
    2018年5月17日 10:55:50 同一分多个提交
    git pull –rebase 会使commit看起来很自然。（先提交在pull 拉取当前分支其他人提交的代码）
</div> 
<div>
    2018年7月5日 15:01:59
    git remote prune origin    删除缓存的远程分支列表
</div> 
