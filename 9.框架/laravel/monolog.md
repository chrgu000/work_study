### 查询
cat /usr/local/var/log/laravel_api/info-2019-05-16.log | grep 'UserService::logceshi'

//显示最新的日志情况
tail -f /usr/local/var/log/laravel_api/info-2019-05-16.log | grep 'UserService::logceshi'

cat -n /usr/local/var/log/laravel_api/info-2019-05-16.log | grep 'UserService::logceshi' |more

//倒序多少行查询
cat -n /usr/local/var/log/laravel_api/info-2019-05-16.log | grep  -55 'UserService::logceshi' | tail -n 200


cat /usr/local/var/log/laravel_api/catch_error-2019-05-17.log | grep -8 'UserController::ceshi'
