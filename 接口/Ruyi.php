<?php

namespace common\tools;

use Yii;

/**
 * 如意支付
 * Class Ruyi
 * @package common\tools
 */
class Ruyi{
    public static $merKey = 'xhQytzYFsYDw6AFrPyecZtPiMc8sSSXP';
    public static $merId = '990020297';
    public static $deposit_url = 'http://pay.ruyipayment.com/gateway/';


    //充值
    public static function deposit($data)
    {
        $pre_data = array(
            "merId" => self::$merId,
            "merOrdId" => date('YmdHis') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT).$data['username'],  //商户订单号,,
            "merOrdAmt" => number_format($data['amount'],2,'.',''),
            "payType" => "11",  //银联扫码
            "bankCode" => "UNIONQR", //银联扫码
            "remark" => "xpj",
            "returnUrl" => 'http://xpj70058.com',
            "notifyUrl" => "https://pay2xpj.com/paynotify/ruyi",
            "signType" => "MD5",
        );


        $pre_sign = '';
        foreach ($pre_data as $k=>$v){
            $pre_sign .= $k.'='.$v.'&';
        }
        $pre_sign .= "merKey=".self::$merKey;
        $signMsg = md5($pre_sign);
        $pre_data['signMsg'] = $signMsg;

        $curl = curl_init(self::$deposit_url);
        curl_setopt($curl, CURLOPT_HEADER, 0 ); // 过滤HTTP头
        curl_setopt($curl,CURLOPT_RETURNTRANSFER, 1);// 显示输出结果
        curl_setopt($curl,CURLOPT_POST,true); // post传输数据
        curl_setopt($curl,CURLOPT_POSTFIELDS,$pre_data);// post传输数据
        $responseText = curl_exec($curl);
        //var_dump( curl_error($curl) );//如果执行curl过程中出现异常，可打开此开关，以便查看异常内容
        curl_close($curl);

        if(!preg_match("/document\.(.*)\.submit/",$responseText)){
            die("通道维护中");
        }else{
            echo $responseText;
            exit;
        }
    }


    //充值回调
    public function depositNotify($post_arr)
    {
      
        //验证签名
        $check_sign = md5("company_id=".$post_arr['company_id']."&company_order_no=".$post_arr['company_order_no']."&trade_no=". $post_arr['trade_no'] ."&actual_amount=". $post_arr['actual_amount'] ."&api_version=".$post_arr['api_version'] . $this->api_key);
        if($check_sign != $post_arr['sign']){
            return false;
        }
        //是否成功
        if($post_arr['status'] == '1' && $post_arr['type'] != '1'){
            return false;
        }
      

        $response = array(
            'error_msg' => '',
            'company_order_no' => $post_arr["company_order_no"],
            'trade_no' => $post_arr['trade_no'],
            'status' => $post_arr['status'],
        );
      
      

        if($post_arr['extra_param'] == 'xpj'){
            $model = new \common\models\XpjOrder();
        }else{
            $model = new \common\models\MgmOrder();
        }

        //如果已经保存数据，则返回
        if($model->find()->where(['order_number'=>$post_arr["company_order_no"]])->one()){
            echo json_encode($response);
            return true;
        }

        //处理记录
        $model->order_number = $post_arr["company_order_no"];
        $model->username = substr($post_arr["company_order_no"],19);
        $model->is_chuli = 0;
        $model->amount = $post_arr['actual_amount'];
        $model->sys_order = "DORA充值成功";
        $model->save();

        echo json_encode($response);
      	return true;
    }


}