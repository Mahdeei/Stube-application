<?php

include 'Server.php';

    if(isset($_POST['user_id']) && isset($_POST['user_comment']) && isset($_POST['comment_text']) && isset($_POST['date'])){
        $user_id = $_POST['user_id'];


        $user_comment = $_POST['user_comment'];
        $comment_text = $_POST['comment_text'];
        $date = $_POST['date'];

        $sql = "INSERT INTO comment(user_id) VALUES ('$user_id')";
        if($db->query($sql)){

            
           $ress=$db->query("SELECT id FROM comment WHERE user_id='$user_id'");
           $ress=$ress->fetch_assoc();
           $comment_id = $ress['id'];
           $sql = "INSERT INTO comments_item(user_comment,comment_id,comment_text,date) VALUES ('$user_comment','$comment_id','$comment_text','$date')"; 
           if($db->query($sql)){
                $resultUser['status'] = "insert seccessfuly";
           }else{
            $resultUser['status'] = "no insert  Post in comment item";
           }



        }else{
            $resultUser['status'] = "no insert  Post in comment";
        }





    }else{
        $resultUser['status'] = "no have Post";
    }








echo json_encode($resultUser);


$db->close();


?>