<?php
include 'Server.php';

   


    if(isset($_POST['phonenumber'])){
        $code=rand(1000000,100000000);
        $resultUser['code'] = "$code";
    }else{
        $resultUser['status']="no have post";
    }


    
echo json_encode($resultUser);
$db->close();

?>