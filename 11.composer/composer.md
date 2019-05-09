### composer 安装新包
composer require 2amigos/yii2-ckeditor-widget

### 安装Laravel-ide-helper IDE 智能提示插件  
composer require barryvdh/laravel-ide-helper --dev

### require和require_dev之间的区别：
require：
它定义了实际的依赖关系以及包版本。
require列出了此包所需的包。
除非满足这些要求，否则不会安装包。
// --dev 是 require_dev：它定义了开发项目所需的包。

### 移除包
composer remove barryvdh/laravel-ide-helper