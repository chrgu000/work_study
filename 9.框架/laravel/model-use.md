### first get 区别
$rows = PositionSensitiveField::where([
    'top_id' => $topId,
    'filed_name' => $field,
])->first();
first() 返回的是一个Model 对象，并且这个对象实现了ArrayAccess接口，所以也可以用$data['id']来访问数据；
无数据返回null  可以if 直接判断

$rows = PositionSensitiveField::where([
    'top_id' => $topId,
    'filed_name' => $field,
])->get();
另外get()返回的一个Model集合，相当于一个二维数组。。。。。所以不能直接empty()判空。。