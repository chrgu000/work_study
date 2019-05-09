### 本地项目上传到git

1.初始化
git init
2.添加文件夹下的所有文件
git add .
3.文件提交到仓库
git commit -m 'first commit'
4.关联到远程库
git remote add origin https://github.com/githubusername/demo.git
5.获取远程库与本地同步合并（如果远程库不为空必须做这一步，否则后面的提交会失败）
git pull --rebase origin master
6.把本地库的内容推送到远程
git push -u origin master