<?php
header("Content-type:text/html;charset=utf-8");

/*
class Person{
	public $name='小明';//小明
	public $name1='小红';//小红
	
	public function run($my_name){ //方法
		echo $my_name.'跑步';
	}
}

//实例化
$p=new Person();  //$p是返回的对象，new是实例化关键字，Person()是实例化的类

//对象调用属性 以及方法 使用->
//对象调用属性的时候，直接调用属性名，不要加$

//echo $p->name1;

$p->run('小王');  //不传参数会不错，除非在方法中写默认参数public function run($my_name=小王')
*/


/*
//Const定义类中的常量
class Person{
	const Name='小明';
	public $name='xiaoming';
}

//调用类常量 、
//方法一：可以实例化类 加::的形式来调用对象，也可以
$p=new Person();
echo $p::Name; 
//方法二：直接调用当前类 加::形式来调用
//echo Person::Name;
*/

/*
class MyPc{
	//方法么和类名一致的时候，构造函数自动执行
	function MyPc(){
		echo '你好，中文网';
	}
	
	function __construct($name)
	{
		echo '你好'.$name;
	}
}

new MyPc('小红'); 
*/


// $this  
/*
//类不被实例化是不会展示类里面的所有功能
class Pc{
	public $name='小明';
	function computer($name,$c){
		//用$this加->调属性和方法
		$this->name=$name; // 形参可以复制给$this->name。
		echo $this->name.'买的'.$c;
	}
}
$b= new Pc();
$b-> computer('小王','电脑');
*/


/*访问控制符：
class Pc{
	public $name='小明';
	
	protected $age='18';
	
	private $city='上海';
	
	public function test(){
		//$this 调用本类的属性和方法
		return $this->name.'在'.$this->city;
	}

}
//类的外面想要调用属性，要先实例化该类
$p=new Pc();
//protected和private访问控制符 不能用对象的形式访问
echo $p->test();
*/

/*
//自动加载函数可以放到类的外面，执行该文件的时候会自动执行
function __autoload($class_name){
	include "$class_name.php";
}

$p=new Pc();   // 打开名为Pc.php的文件
 */
 
 
 //extends 继承：
 /*
//父类 基类
class A{
	//.....
	public $name='父类';
}

//子类 派生类
//会把继承的类 比如A类 里面的属性和方法也给继承过来
class B extends A{
	//......
	
	//通过子类的方法调用父类的属性和方法
	public function test(){
		echo $this->name;
	}
}

$p=new B();
$p->test();
*/


// parent 关键字:
/*
// 父类
class A{
	function test(){
		echo '父类';
	}
}

// 子类
class B extends A{
	function test(){
		echo '子类';
	}
	
	function aa(){
		parent::test();
	}
}

$b=new B();
$b->test();  //得到的结果为子类，因为子类继承自父类，如果子类方法名和父类的方法名一致时，子类会覆盖父类的方法名

//parent两种实现：
// ONE:
$b=new B();
$b->aa();  //结果为父类
// TWO： 可以function test(){parent::test();}  
*/

/*
//范围操作符 ::
class A{
	const Name='小明';
	public static function test() {
		echo '静态方法'；	
	}
}
//调取类常量
echo A::Name;
//加::来调用一些静态的属性和方法；但不能调用普通方法
A::test();
*/

/*
//trait 类
trait Pc{
	function usb($name){
		echo 'usb'.$name;
	}
	function key(){
		echo 'key';
	}
}

class A{
		use Pc; // 相当于把Pc类中的方法复制粘贴过来
}

$a=new A();
$a-> key(); //得到结果为key

$a=new A();
$a-> usb('是一个参数');  
*/

/*
//抽象类
abstract class A{
	// 普通方法
	function test(){}
	// 抽象方法
	abstract function usb();
}
class B extends A{
	function usb(){
		echo '子类重载';
	}
}
$b=new B();
$b->usb();
*/

/*
//接口 interface
interface Pc{
	//所有的方法都是抽象方法
	public function key();
	
	public function usb($name);
}

interface Person{
	public function age();
	public function name($p_name);
}

//接口只允许被实现和引用
class B implements Pc,Person{
	//如果实现接口的话，要把接口里面所有的抽象方法都实现(重载),少一个都不行
	function key(){
		echo 'key';
	}
	function usb($name){
		echo '这是一个参数'.$name;
	}
	function age(){}
	function name($p_name){
		echo '名字是'.$p_name;
	}
}
$a=new B();
$a->usb('鼠标');
echo '<br>';
$b=new B();
$b->name('Grey');
*/


// __clone 克隆
/*
class MyClone{
	public function __clone(){
		echo "对象已被克隆";
	}
}
$objectA= new MyClone();
$objectB=$objectA;
$objectC=clone $objectA;
*/


// __get
/*
class Demo{
	private $age=18;
	public $name;
	
	//
	function __get($name){  
		if($this->name=='admin'){
			return $this->age;
		}else{
			return "数据出错";
		}
	}
}

$a=new Demo();
$a->name='admin';
echo $a->age;
*/ 

//__toString
/*
class A{
	//此魔术方法必须要求里面有返回值
	public function __toString(){
		return '__toString';
	}
}
//当你尝试直接输出对象时会自动调用
$a=new A();
echo $a;
*/

?>
