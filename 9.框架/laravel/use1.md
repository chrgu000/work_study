### 创建模块
### 多模块
引入多模块
composer require caffeinated/modules
配置
php artisan vendor:publish --provider="Caffeinated\Modules\ModulesServiceProvider" --tag="config"
使用
php artisan make:module YjjTest

### 安装Laravel-ide-helper IDE 智能提示插件
https://blog.csdn.net/leejianjun/article/details/79677470

1、composer安装依赖 --dev
composer require barryvdh/laravel-ide-helper --dev

2、修改配置文件/config/app.php,增加如下内容
return [
   // ...
   'providers' => [
       // 生成后可以注释
       Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider::class,
   ]
]
3、生成_ide_helper.php文件
php artisan ide-helper:generate

将_ide_helper.php添加到 .gitignore 文件中