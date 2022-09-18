<?php

include 'Server.php';

if(
    isset($_POST['username'] ) && isset($_POST['name']) && isset($_POST['type']) && isset($_POST['password']) && isset($_POST['phonenumber'])){
        $usernameSignUp = $_POST['username'];
        $nameSignUp = $_POST['name'];
        $typeSignUp = $_POST['type'];
        $passwordSignUp = $_POST['password'];
        $phonenumberSignUp = $_POST['phonenumber'];
        $token1 = openssl_random_pseudo_bytes(18);
        $token2 = bin2hex($token1);


 
        $checkUsername =$db->query("SELECT * FROM user WHERE username = '$usernameSignUp'");
        if ($checkUsername->num_rows > 0) {
            $resultUser['status'] = "exist";
        }else{
            $resss = $db->query("INSERT INTO `user`( `type`, `username`, `name`, `phonenumber`, `password`, `apiToken`) VALUES ('$typeSignUp','$usernameSignUp','$nameSignUp','$phonenumberSignUp','$passwordSignUp','$token2')");
            if($resss){
                $resultUser['status'] = "created";
                $resultUser['username'] = $usernameSignUp;
                $resultUser['name'] = $nameSignUp;
                $resultUser['type'] = $typeSignUp;
                $resultUser['phonenumber'] = $phonenumberSignUp;
                $resultUser['apiToken'] = $token;
    
    
                $checkId="SELECT id FROM user WHERE phonenumber= '$phonenumberSignUp'";
                        if ($idcheck=$db->query($checkId)) {
                            if ($idcheck->num_rows>0) {
                                $row=$idcheck->fetch_assoc();
                                $userid=$row['id'];
                            }else{
                                $resultUser['status1']='no status1';
                            }
                        }else{
                            $resultUser['status1']='no status2';
                        }
                        if ($typeSignUp == "1"){
                        $SignUpStudent = "INSERT INTO student(userid) VALUES($userid)";
                        $resultstudent=$db->query($SignUpStudent);
                        $resultUser['status insert student']=$resultstudent;
                        }elseif ($typeSignUp == "2"){
                            $SignUpNoramlUser = "INSERT INTO normaluser(userid) VALUES($userid)";
                            $resultstudent=$db->query($SignUpNoramlUser);
                            $resultUser['status insert nomaluser']=$resultstudent;
                        }else{
                            $resultUser['status insert userid']="not insert userid";
                        }
            
    
                
            } else{
                $resultUser['status']="not created in insert";
            }
                    }
   
}else{
        $resultUser['status']="no have post";
}


        
// if($resss==null){
//     $resultUser['status'] =$db->error;
// }

echo json_encode($resultUser);


$db->close();


?>