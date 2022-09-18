<?php

include 'Server.php';
$MaxId;
$Query = "SELECT * FROM advertisings WHERE id = (SELECT MAX(id) FROM advertisings);";

 $maxID = $db->query($Query);
 if($maxID->num_rows>0){
     $row = $maxID->fetch_assoc();
     $MaxId = $row['id'];
 }
 echo $MaxId



?>