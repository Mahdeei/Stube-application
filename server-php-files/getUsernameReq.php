<?php
    include "Server.php";




    if(isset($_POST['user_id'])){

        $user_id = $_POST['user_id'];
        
       
        
        $sql=$db->query("select id from advertisings WHERE user_id='$user_id'");
   
        $foundID = array();
   
        
        while ($foundID=$sql->fetch_assoc())
        {
            $res[]=$foundID;
        }
        
        $requests = array();
        foreach( $res as $value){
            $id =  $value['id'];
            $sqlGetUserName = $db->query("select user_id from request WHERE id_advertising='$id'");

            while ($foundUsername=$sqlGetUserName->fetch_assoc())
            {
                $resUsername[]=$foundUsername;
            }
            
        }
        
        $completeID = array();
        foreach( $resUsername as $value ){
            $id = $value['user_id'];
            $sqlGetUserName = $db->query("select username from user WHERE id='$id'");
        
            
            
        
            while ($foundID=$sqlGetUserName->fetch_assoc())
            {
                $completeID[]=$foundID;
            }

        }
    }
    else{
        $resultUser['status']="not created in insert";

    }
    $usernames=array();

    foreach($completeID as $username){
        $usernames[]= $username['username'];
    }
    $resultUser=json_encode($usernames);
    
    echo $resultUser;

    $db->close();

?>