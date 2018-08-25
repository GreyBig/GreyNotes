<!DOCTYPE html>
<html>
<head>
    <title></title>
</hed>
<script type="text/javascript">

如果没有return语句，函数执行完毕后也会返回结果，只是结果为undefined。

定义函数的方式
function abs(x) {
	if(x>=0) {
		rfeturn x;
	} else {
		return -x;
	}
}

第二种定义函数的方式如下：

var abs = function (x) {
    if (x >= 0) {
        return x;
    } else {
        return -x;
    }
};
function (x) { ... }是一个匿名函数，它没有函数名。但是，这个匿名函数赋值给了变量abs，所以，通过变量abs就可以调用该函数。
上述两种定义完全等价，注意第二种方式按照完整语法需要在函数体末尾加一个;，表示赋值语句结束。


arguments
JavaScript还有一个免费赠送的关键字arguments，它只在函数内部起作用，并且永远指向当前函数的调用者传入的所有参数。arguments类似Array但它不是一个Array：
function foo(x) {
    console.log('x = ' + x); // 10
    for (var i=0; i<arguments.length; i++) {
        console.log('arg ' + i + ' = ' + arguments[i]); // 10, 20, 30
    }
}
foo(10, 20, 30);

</script>
<body>

</body>
</html>