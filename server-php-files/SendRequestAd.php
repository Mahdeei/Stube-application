<?php

    include  "Server.php";

    if(isset($_POST['id_advertising'] ) && isset($_POST['user_id']) && isset($_POST['req_text']) && isset($_POST['date'])){
        
        $id_advertising = $_POST['id_advertising'];
        $user_id = $_POST['user_id'];
        $req_text = $_POST['req_text'];
        $date = $_POST['date'];

        $queryInsert = "INSERT INTO request (id_advertising ,user_id) VALUES ($id_advertising,$user_id)";
        if($db->query($queryInsert)){

            
            
            $querySelect = "SELECT `id` FROM `request` WHERE id_advertising='$id_advertising' AND user_id='$user_id'";
            
            if ($idcheck=$db->query($querySelect)) {
                if ($idcheck->num_rows>0) {
                    $row=$idcheck->fetch_assoc();
                    $id=$row['id'];
                }else{
                    $resultUser['status1']='no founded';
                }
            }
            $queryInsert = "INSERT INTO request_item (req_id ,req_text,date) VALUES ('$id','$req_text','$date')";
            if($db->query($queryInsert)){
                $resultUser['status']="created success";
            }
        }else{
            echo $resultUser['status']="not created in request";
        }



    
    
    }else{
        $resultUser['status']= "no have post";
    }


    

    echo json_encode($resultUser);

    $db->close();


?>