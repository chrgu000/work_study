## Api 开发工具包 —— dingo/api
#### 系统要求

```
PHP ^7.1
```

#### 特点：

1. 前缀与子域名
2. 灵活的版本控制
3. 多种认证方式
4. 访问速度限制
5. 内部请求

#### 作用
配合passport使用搭建api
#### 安装


```
composer require dingo/api
```
> 备注：安装的是最新版-需要php版本为7.1

#### Laravel使用以下命令可以发布 API 的配置文件到 config 文件下：


```
php artisan vendor:publish --provider="Dingo\Api\Provider\LaravelServiceProvider"
```
返回

```
Copied File [/vendor/dingo/api/config/api.php] To [/config/api.php]
Publishing complete.
```
> 备注：文件复制操作

#### 再次设置更改路由，

打开 routes/api.php 文件添加

复制代码
$api = app('Dingo\Api\Routing\Router');
$api->version('v1',function ($api) {
    $api->post('login', 'App\Http\Controllers\Api\LoginController@login');
    $api->post('register', 'App\Http\Controllers\Api\LoginController@register');
    $api->group(['middleware' => 'auth:api'], function($api){
        $api->post('details', 'App\Http\Controllers\Api\LoginController@details');
    });
});