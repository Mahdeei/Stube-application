<?php

    include 'Server.php';
    $phonenumberSignUp = $_POST['phone'];
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

            $SignUpStudent = "INSERT INTO student(userid) VALUES($userid)";
            $resultstudent=$db->query($SignUpStudent);
            $resultUser['status insert student']=$resultstudent;

            
echo json_encode($resultUser);

$db->close();



?>