<?php
include 'Server.php';

   


    if(isset($_POST['phonenumber'])){
        $phonenumber = $_POST['phonenumber'];
        $sql = "UPDATE `user` SET `id`=[value-1],`type`=[value-2],`username`=[value-3],`name`=[value-4],`phonenumber`=[value-5],`image`=[value-6],`password`=[value-7],`moarefiName`=[value-8],`title`=[value-9],`address`=[value-10],`apiToken`=[value-11] WHERE phonenumber='$phonenumber'";

        $code=rand(1000000,100000000);
        $resultUser['code'] = "$code";
    }else{
        $resultUser['status']="no have post";
    }


    
echo json_encode($resultUser);
$db->close();

?>