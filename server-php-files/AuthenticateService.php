<?php
include 'Server.php';

if (isset($_POST['apiToken'])){
    $apiToken = $_POST['apiToken'];
    $tokenQuery = "SELECT * FROM user WHERE apiToken='$apiToken'";
    if ($toknAnswr=$db->query($tokenQuery)){
        if ($toknAnswr->num_rows>0){
            $row=$toknAnswr->fetch_assoc();
            $resultUser=$row;
            $resultUser['status']= 'Defined';


        }else{
            $resultUser['status']= 'Undefined';
        }
    }else{
        $resultUser['status']= 'Query not true';
    }
}else{
    $resultUser['status']='no have post';
}


echo json_encode($resultUser);

$db->close()
?>