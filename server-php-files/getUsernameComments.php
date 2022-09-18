<?php
    include "Server.php";

    
    if(isset($_POST['user_id'])){

        $username = array();
        $userComment = array();

        $user_id = $_POST['user_id'];
        

        $sql=$db->query("select id from comment WHERE user_id='$user_id'");
        $User_id = $sql->fetch_assoc();
        $id = $User_id['id'];

        $sql=$db->query("select user_comment from comments_item WHERE comment_id='$id'");
        
        
        while ($row=$sql->fetch_assoc())
        {
            $userComment[] =$row['user_comment'];
            

            
        }

        foreach($userComment as $item){
            $sql = "SELECT username FROM user WHERE id=$item";
            $res =$db->query($sql);
            $res = $res->fetch_assoc();
            $username[]=$res['username'];
        }

    
    }else{
        $resultUser['status']="not have post in insert";
    }





    $resultUser=json_encode($username);
    
    echo $resultUser;

    $db->close();

?>