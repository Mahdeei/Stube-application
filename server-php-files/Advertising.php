<?php

include "Server.php";

$res=array();
$num1=$_POST['firstid'];
$num2=$_POST['lastid'];
for( ;$num2>=$num1 ; $num2--){
    $sql=$db->query("select * from advertisings WHERE id='$num2'");
    $row=$sql->fetch_assoc();
    if ($row==null) {
        continue;
    }
        $res[]=$row;
    
}


$resultUser=json_encode($res);
echo $resultUser;

?>