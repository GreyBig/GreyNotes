<?php

include "Db.php";

class MyConnect{

    // 连接点
    private $linke;

    //结果
    private $re;

    public function __construct()
    {
        $this->link= mysqli_connect(HOST,USER,PASSWORD,DATABASE);
        if(!$this->link)
        {
            die("链接失败：".mysqli_connaect_error);
        }
    }

    // 查询语句
    public function my_query($sql)
    {
        return $this->re=$this->link->query($sql);
    }

    // 取出一条键值对关联数组
    public function my_fetch_assoc()
    {
        return $this->re->fetch_assoc();
    }
    // 数字关联数组
    public function my_fetch_row()
    {
        return $this->re->fetch_row();
    }
    // 两者兼顾
    public function my_fetch_array()
    {
        return $this->re->fetch_array();
    }
    // 取出全部数据
    public function my_fetch_all()
    {
        return $this->re->fetch_all();
    }
}