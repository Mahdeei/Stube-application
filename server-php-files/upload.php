<?php

    include 'Server.php';

    $image = $_FILES['image']['name'];
    // print_r($image);
    $title = $_POST['title'];
    $imagePath = "Uploads/".$image;

    move_uploaded_file($_FILES['image']['tmp_name'],$imagePath);

    if($db->query("INSERT INTO image (title,image) VALUES ('".$title."','".$image."')")){
        $resultUser['status'] = "seccess";
    }else{
        $resultUser['status'] = "failed";
    }
    echo $resultUser;
?>