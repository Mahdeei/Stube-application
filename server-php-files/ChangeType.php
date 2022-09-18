<?php

    include 'Server.php';


    if( isset($_POST['changetype']) && isset($_POST['phonenumber'])){
        $phonenumber = $_POST['phonenumber'];
        $type=$_POST['changetype'];
        $changeType = "UPDATE user SET type= '$type' WHERE phonenumber= '$phonenumber' ";
        $Query=$db->query($changeType);
    }

    $resultUser['status'] = $Query;
    
    echo json_encode($resultUser);

    $db->close();
    
    

?>