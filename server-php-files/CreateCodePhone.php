<?php

include 'Server.php';

if(isset($_POST['phone'])){
    $phonenumber=$_POST['phone'];
    $code=rand(100000,1000000);
    $resultUser['token'] = "$code";
    $resultUser['phonenumber'] = $phonenumber;
}else{
    $resultUser['status']="no have post";
}


echo json_encode($resultUser);
$db->close();

?>