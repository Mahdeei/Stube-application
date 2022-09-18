<?php
include 'Server.php';



$fieldintern = array(
    'title',
    'company',
    'date',
    'numberinternship',
    'time_work',
    'type',
    'description',
    'category',
    'image',
    'address',
    'phonenumber',
);

$userid = $_POST['userid'];

$QueryInsert ="INSERT INTO internship(userid,";
$count =0;
$count2 =0;

foreach ($fieldintern as $field){

    if (isset($_POST[$field])){
       if ($count != (count($_POST)-2)){
           $QueryInsert .= "$field" . ',';
           
       }else{
           $QueryInsert .= "$field";
           $QueryInsert.= ") VALUES ($userid,";
           foreach ($fieldintern as $item){
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