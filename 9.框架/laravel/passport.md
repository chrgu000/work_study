介绍
在 Laravel 中，实现基于传统表单的登陆和授权已经非常简单，但是如何满足 API 场景下的授权需求呢？在 API 场景里通常通过令牌来实现用户授权，而非维护请求之间的 Session 状态。在 Laravel 项目中使用 Passport 可以轻而易举地实现 API 授权认证，Passport 可以在几分钟之内为你的应用程序提供完整的 OAuth2 服务端实现。Passport 是基于由 Andy Millington 和 Simon Hamp 维护的 League OAuth2 server 建立的。

1.安装
在开始之前，请通过 Composer 包管理器安装 Passport：
composer require laravel/passport  
#安装完成后，在composer.json文件中会看到文件版本信息

2.接下来，将 Passport 的服务提供者注册到配置文件 config/app.php 的 providers 数组中
Laravel\Passport\PassportServiceProvider::class,

3.执行数据库迁移
php artisan migrate #数据库中会生成接口认证所需的5张表
备注:会
database/migrations/2014_10_12_000000_create_users_table.php 
vendor/laravel/passport/database/migrations/2016_06_01_000004_create_oauth_clients_table.php
运行这些文件-创建表

4.创建生成安全访问令牌时所需的加密密钥，同时，这条命令也会创建用于生成访问令牌的「个人访问」客户端和「密码授权」客户端
php artisan passport:install

运行后返回:
Personal access client created successfully.
Client ID: 1
Client secret: mWRxMmQ5ZEZrp4fg6nNtPTY1EOsUEaHMt4g4IcXh
Password grant client created successfully.
Client ID: 2
Client secret: whS7UNufqCsNeyqOX00jaN7saYT3zH7GwIuCR4ID
备注：表oauth_clients 写入了2条数据

5.将配置文件 config/auth.php 中授权看守器 guards 的 api 的 driver 选项改为 passport 
'guards' => [
    'web' => [
        'driver' => 'session',
        'provider' => 'users',
    ],

    'api' => [
        'driver' => 'passport',
        'provider' => 'users',
        //'hash' => false,
    ],
],
6.打开服务提供者 AuthServiceProvider ， 在 boot 方法中加入如下代码:
public function boot() { 
  $this->registerPolicies(); 
  Passport::routes(); //接口认证的路由
  Passport::tokensExpireIn(now()->addDays(30));  //这里设置为30天过期-非必须
  Passport::refreshTokensExpireIn(now()->addDays(30));
}
7、在Model中，我们需要增加 HasApiTokens class，
/Users/liminlimin/laravel/blog/app/User.php
class User extends Authenticatable
{
    use HasApiTokens, Notifiable;
}
8.配置 routes/api.php ，增加相应API路由配置
Route::post('login', 'api\LoginController@login');  
Route::post('register', 'api\LoginController@register');  
  
Route::group(['middleware' => 'auth:api'], function(){  
    Route::post('details', 'api\LoginController@details');  
});
9.创建测试文件生成token

10.postman发起注册-登录-生成token  - detail 使用token发起请求

待解决：token 重新登录后失效
