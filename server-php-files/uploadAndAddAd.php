<?php

    include "Server.php";

    $image = $_FILES['image']['name'];

    $imagePath = "image/".$image;
      
    move_uploaded_file($_FILES['image']['tmp_name'],$imagePath);

    if(isset($_POST['user_id']) && isset($_POST['title']) && isset($_POST['description']) && isset($_POST['date']) && isset($_POST['price']) && isset($_POST['conditions']) && isset($_POST['location']) && isset($_POST['image'])){
        
        $user_id=$_POST['user_id'];
        $title=$_POST['title'];
        $description=$_POST['description'];
        $date=$_POST['date'];
        $price=$_POST['price'];
        $conditions=$_POST['conditions'];
        $location=$_POST['location'];
        $image=$_POST['image'];


        $sql = "INSERT INTO advertisings(user_id,title,description,date,price,conditions,location,image)VALUES('$user_id','$title','$description','$date','$price','$conditions','$location','$image')";
        if ($db->query($sql)){
            $resultUser['status']= 'added' ;
        }else{
        $resultUser['status']= 'error' ;
        }
    }else{
        $resultUser['status']="not have post";
    }

    
    $resultUser=json_encode($resultUser);
    
    echo $resultUser;


    


    




    $db->close();



?>