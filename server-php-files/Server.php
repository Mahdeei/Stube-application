<?php
    $servername = "localhost";
    $username ="root";
    $password ="";
    $dbname ="stu";
    global $db;
    global $resultUser;
    $db = mysqli_connect($servername,$username,'',$dbname);
    $db->set_charset("utf8");
if($db){
    
    $resultUser['server']="connect seccessful";
    

}else{
    $resultUser['server']="not connect";
}

?>