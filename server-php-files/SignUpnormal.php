<?php

include 'Server.php';


if(
    isset($_POST['username'] ) && isset($_POST['name']) && isset($_POST['type']) && isset($_POST['password']) && isset($_POST['phonenumber'])){
        $usernameSignUp = $_POST['username'];
        $nameSignUp = $_POST['name'];
        $typeSignUp = $_POST['type'];
        $passwordSignUp = $_POST['password'];
        $phonenumberSignUp = $_POST['phonenumber']; //TODO inja moratab shavad

        $SignUpUser = "INSERT INTO user(username,name,type,phonenumber,password) VALUES('".$usernameSignUp."','".$nameSignUp."','".$typeSignUp."','".$phonenumberSignUp."','".$passwordSignUp."')";
        $resss=$db->query($SignUpUser);
        if($resss){
            $resultUser['status'] = "created";
            $resultUser['username'] = $usernameSignUp;
            $resultUser['name'] = $nameSignUp;
            $resultUser['type'] = $typeSignUp;
            $resultUser['phonenumber'] = $phonenumberSignUp;    


            $checkId="SELECT id FROM user WHERE phonenumber= '".$phonenumberSignUp."'";
                    if ($idcheck=$db->query($checkId)) {
                        if ($idcheck->num_rows>0) {
                            $row=$idcheck->fetch_assoc();
                            $userid=$row['id'];
                        }else{
                            print_r('no status1');
                        }
                    }else{
                        print_r('no status2');
                    }
        
                    $SignUpStudent = "INSERT INTO normaluser(userid) VALUES($userid)";
                    $resultstudent=$db->query($SignUpStudent);
                    $resultUser['status insert normaluser']=$resultstudent;
        

            
        } else{
            $resultUser['status']="not created";
        }
}else{
        $resultUser['status']="no have post";
}



echo json_encode($resultUser);

$db->close();


?>