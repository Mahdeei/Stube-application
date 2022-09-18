<?php

    include 'Server.php';

    $fieldsstu = array(
        'fieldUni',
        'skills',
        'resumes',
        'educational',
        'certificates',
        'languages'
    );
    
    $fieldsuser = array(
        'username',
        'name',
        'profileImage',
        'moarefiName',
    );

    $count=1;
    $phonenumber = $_POST['phonenumber'];
    $type = $_POST['type'];
    if($type=='1'){
        
        $QueryCommon = "UPDATE user SET ";
        $countUser =0 ;
        foreach($fieldsuser as $field){
            if (isset($_POST[$field])) {
                $countUser++;
            }
        }



        foreach ($fieldsuser as $field) {
            if (isset($_POST[$field])) {
    
                if ($count !== $countUser){
      
                    $QueryCommon .= $field . "='" . $_POST[$field] . "', ";
                } else {
    
                    $QueryCommon .= $field . "='" . $_POST[$field] . "' WHERE phonenumber='$phonenumber'";
                }
                $count++;
            }
    
        }
        $QueryCommon = $db->query($QueryCommon);
        $resultUser['status Common']=$QueryCommon;
        $chooseID="SELECT id FROM user WHERE phonenumber='$phonenumber'";
        
        if($chooseID=$db->query($chooseID)){
            if($chooseID->num_rows>0){
                $row=$chooseID->fetch_assoc();
                $id=$row['id'];
            }
        }
        $QueryStudent = "UPDATE student SET ";
        
        foreach($fieldsstu as $student){
            if (isset($_POST[$student])) {
                
                if ($count !== count($_POST) - $countUser){
      
                    $QueryStudent .= $student . "='" . $_POST[$student] . "', ";
                } else {
    
                    $QueryStudent .= $student . "='" . $_POST[$student] . "' WHERE userid='$id'";
                }
                $count++;
            }
        }
        
        $QueryStudent = $db->query($QueryStudent);
        $resultUser['status student']=$QueryStudent;
    
    
    
    
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    echo json_encode($resultUser);

    $db->close();
    
    


?>