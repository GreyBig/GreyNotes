<?php

include "MyConnect.php";

class Begin{

    function run()
    {
        $a=new MyConnect();
        $re=$a->my_query("select * from user"); //返回的是结果集

        $t=$a->my_fetch_array();

        var_dump($t);
    }
}

$b=new Begin();
$b->run();