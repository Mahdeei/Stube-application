<?php

include 'Server.php';

//if (isset($_POST['id'])){
//    $id=$_POST['id'];

//    $chooseID="SELECT username FROM user WHERE id='$id'";
//    if($chooseID=$db->query($chooseID)){
//        if($chooseID->num_rows>0){
//            $row=$chooseID->fetch_assoc();
//            $username=$row['username'];
//            echo $username;
//        }
//    }
//}else{
//
//}
    $lastid = "SELECT max(id) FROM user";
if ($lastestid=$db->query($lastid)){
    if ($lastestid->num_rows>0){
        $row=$lastestid->fetch_assoc();
        $id = $row['id'];
    }
}
//$id = mssql_free_result($lastid, 0, 'id');
echo $id

?>