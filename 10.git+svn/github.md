### 本地项目上传到github

1.初始化
git init
//touch .gitignore  判断 .gitignore 是否存在，是否有屏蔽上传的文件夹
2.添加文件夹下的所有文件
git add .
3.文件提交到仓库
git commit -m 'first commit'
4.关联到远程库
git remote add origin https://github.com/githubusername/demo.git
git remote add origin git@github.com:yjj249894855/yjj_web.git
5.获取远程库与本地同步合并（如果远程库不为空必须做这一步，否则后面的提交会失败）
git pull --rebase origin master
6.把本地库的内容推送到远程
git push -u origin master
 
git checkout -b ats-requirement-0509 origin/ats-requirement-0509

git checkout -b 20190509 origin/20190509

git checkout -b ats-requirement-0516 origin/ats-requirement-0516

git checkout -b 20190516 origin/20190516

git@github.com:yjj249894855/yjj_web.git