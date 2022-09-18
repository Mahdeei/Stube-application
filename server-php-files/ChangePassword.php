<?php
include 'Server.php';

if( isset($_POST['newPassword']) && isset($_POST['phonenumber']) ) {
    $newPassword = $_POST['newPassword'];
    $phonenumber2 = $_POST['phonenumber'];

    $updatePassword = "UPDATE user SET password= '".$newPassword."' WHERE phonenumber='".$phonenumber2."'";
    $testquery=$db->query($updatePassword);

    $check = "SELECT password FROM user WHERE phonenumber= '".$phonenumber2."'";
    $checkPass=$db->query($check);
    
    if($rescheck=$checkPass){
        if($rescheck->num_rows>0){
            $rooooow=$rescheck->fetch_assoc();
            if( $_POST['newPassword'] == $rooooow['password']){
                $resultUser['status']="update success";
            }else{
                $resultUser['status']="update fail1";
            }

        }else{
            $resultUser['status']="update fail2";
        }
    }else{
        $resultUser['status']="update fail3";
    }
}else{
    $resultUser['status']="no have password";
}



// if(isset($_POST['phone'])){
//     $phonenumber=$_POST['phone'];
//     $code=rand(100000,1000000);
//     $resultSignUp['token'] = "$code";
//     $resultSignUp['phonenumber'] = $phonenumber;
//     if(isset($_POST['newPassword'])){
//         $newPassword = $_POST['newPassword'];
//         $updatePassword = "UPDATE user SET password= '".$newPassword."' WHERE phonenumber=$phonenumber";
//         $testquery=$db->query($updatePassword);
//         if($testquery){
//             $resultChangePass['status']="update success";
//         }else{
//             $resultChangePass['status']="update fail";
//         }
//     }else{
//         $resultChangePass['status']="no have password";

//     }
// }else{
//     $resultSignUp['status']="no have post phone";
// }


echo json_encode($resultUser);
    $db->close();


?>