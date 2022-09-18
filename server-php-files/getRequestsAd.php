<?php
    include "Server.php";




    if(isset($_POST['user_id'])){
        $requests = array();
        $user_id = $_POST['user_id'];
        
       
        
        $sql=$db->query("select id from advertisings WHERE user_id='$user_id'");
   
        $foundID = array();
   
        
        while ($foundID=$sql->fetch_assoc())
        {
            $res[]=$foundID;
        }
        
        
        
        
        foreach( $res as $value ){
            $id =  $value['id'];

            $sql=$db->query("select id from request WHERE id_advertising='$id'");

            $completeID = array();
            while ($foundID=$sql->fetch_assoc())
            {
                $completeID[]=$foundID;
            }
        
            foreach( $completeID as $value ){
                $req_id = $value['id'];
                $sql=$db->query("select * from request_item WHERE req_id='$req_id'");
                

                $row=$sql->fetch_assoc();
                $requests[]=$row;
                
            }
        }
    }
    else{
        $resultUser['status']="not created in insert";

    }

    $resultUser=json_encode($requests);
    
    echo $resultUser;


    


    




    $db->close();

?>