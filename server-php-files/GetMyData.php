<?php
include 'Server.php';
$usrStu = array('fieldUni' , 'skills' , 'resumes', 'educational' , 'certificates' , 'languages');


if( isset($_POST['id'])){
    $id = $_POST['id'] ;

    $existUser = "SELECT * FROM user WHERE id= '$id'";

    if($res=$db->query($existUser)){
    
        if($res->num_rows>0){
            $row=$res->fetch_assoc();
            $resultUser=$row;
            if($resultUser['type']=='1'){
                $User = "SELECT fieldUni , skills , resumes, educational , certificates , languages FROM student WHERE userid= '$id'";
                if($res=$db->query($User)){
                    if($res->num_rows>0){
                        $row=$res->fetch_assoc();
                       foreach($usrStu as $item){
                           $resultUser[$item]=$row[$item];
                       }
                    }
                }    
            }else{
                $User = "SELECT numberproject FROM normaluser WHERE userid= '$id'";
                if($res=$db->query($User)){
                    if($res->num_rows>0){
                        $row=$res->fetch_assoc();
                            $resultUser['numberproject']=$row['numberproject'];
                        }                    
                }   
            }

        }
        else{
            $resultUser['status']='not exist user';
        }
    }else{
        $resultUser['status']='not request query';
    }
}else{
    $resultUser['status']='no have post';
}
echo json_encode($resultUser);

$db->close();



?>