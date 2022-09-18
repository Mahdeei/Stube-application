<?php
include 'Server.php';

if(isset($_POST['username']) && isset($_POST['password'])){
    $username = $_POST['username'] ;
    $passwordUser =$_POST['password'];

    $existUser = "SELECT * FROM user WHERE username= '$username' AND password= '$passwordUser'";
    if($res=$db->query($existUser)){
        if($res->num_rows>0){
            $row=$res->fetch_assoc();
            $resultUser=$row;
            $resultUser['status']="succes";

        }
        else{
            $resultUser['status']='not exist user';
        }
    }else{
        $resultUser['status']='not request query';
    }
}else{
    $resultUser['status']='no have post';
}
echo json_encode($resultUser);

$db->close();



?>