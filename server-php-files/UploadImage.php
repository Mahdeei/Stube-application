<?php

    $name = $_POST['name'];
    $image = $_POST['image'];

    $realImage = base64_decode($image);


    file_put_contents($name , $realImage);

    print_r('file Uploaded ... ');
?>