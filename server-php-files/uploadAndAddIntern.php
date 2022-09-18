<?php

    include "Server.php";

    $image = $_FILES['image']['name'];

    $imagePath = "image/".$image;
      
    move_uploaded_file($_FILES['image']['tmp_name'],$imagePath);

    if(isset($_POST['user_id']) && isset($_POST['title']) && isset($_POST['company']) && isset($_POST['date']) && isset($_POST['numberinternship']) && isset($_POST['time_work']) && isset($_POST['type']) && isset($_POST['description']) && isset($_POST['image']) && isset($_POST['address']) && isset($_POST['phonenumber'])){
        
        $user_id=$_POST['user_id'];
        $title=$_POST['title'];
        $company=$_POST['company'];
        $date=$_POST['date'];
        $numberinternship=$_POST['numberinternship'];
        $time_work=$_POST['time_work'];
        $type=$_POST['type'];
        $description=$_POST['description'];
        $image=$_POST['image'];
        $address=$_POST['address'];
        $phonenumber=$_POST['phonenumber'];


        $sql = "INSERT INTO internship(userid,title,company,date,numberinternship,time_work,type,description,image,address,phonenumber)VALUES('$user_id','$title','$company','$date','$numberinternship','$time_work','$type','$description','$image','$address','$phonenumber')";
        if ($db->query($sql)){
            $resultUser['status']= 'added' ;
        }else{
            $resultUser['status']= 'error' ;
            $resultUser['status error']= ".$db->error().";

        }
    }else{
        $resultUser['status']="not have post";
    }

    
    $resultUser=json_encode($resultUser);
    
    echo $resultUser;


    


    




    $db->close();



?>