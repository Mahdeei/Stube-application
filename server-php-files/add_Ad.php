<?php
include 'Server.php';



$fieldAd = array(
    'title',
    'description',
    'date',
    'price',
    'category',
    'conditions',
    'location',
);

$userid = $_POST['user_id'];

$QueryInsert ="INSERT INTO advertisings(user_id,";
$count =0;
$count2 =0;

foreach ($fieldAd as $field){

    if (isset($_POST[$field])){
       if ($count != (count($_POST)-2)){
           $QueryInsert .= "$field" . ',';
           
       }else{
           $QueryInsert .= "$field";
           $QueryInsert.= ") VALUES ($userid,";
           foreach ($fieldAd as $item){
               if(isset($_POST[$item])){
                if ($count2 != (count($_POST) - 2) ){
                    $QueryInsert .= "'".$_POST[$item]."'" .",";
                }else{
                    $QueryInsert .= "'".$_POST[$item]."'" . ")";
                }
                $count2++;
               } 
               
               
           }

       }
       $count++;
    }
    
}
    if ($db-> query($QueryInsert)){
        $resultUser['status']= 'added' ;
    }else{
    $resultUser['status']= 'error' ;
    print_r($db->error);
}


echo json_encode($resultUser);

$db->close();





?>