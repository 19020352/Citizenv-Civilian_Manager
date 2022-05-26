<?php
    require_once('../controllers/manageController.php');
    $ctlt = new ManageController();
    $uname = (string)$_SESSION['login'];
    $result = $ctlt -> getQuyen($uname);
    $quyen = $result[0]["quyen"];
    if($quyen == 1){
    require_once('../public/html/manage.html');}
    if($quyen == 0){
        require_once('../public/html/manage_notPermit.html');}
    

    $ctl = new ManageController();
    $ret = $ctl -> proc();
    $bytes = file_put_contents("../public/manage.json", $ret);

    if(isset($_POST['submitAddManager']))  {
        try {   
            $ctl -> addManager();
            echo '<META HTTP-EQUIV="Refresh" Content="0">';
        }
        
        catch(Exception $e) {
            $error_msg = $e->getMessage();
        }
    
    }

    if(isset($_POST['del_but']))  {
        try {   
            $ctl -> deleteManager();
            echo '<META HTTP-EQUIV="Refresh" Content="0">';
        }
        
        catch(Exception $e) {
            $error_msg = $e->getMessage();
        }
    
    }

    if(isset($_POST['edit_but']))  {
        try {   
            $ctl -> editManager();
            echo '<META HTTP-EQUIV="Refresh" Content="0">';
        }
        
        catch(Exception $e) {
            $error_msg = $e->getMessage();
        }
    
    }

    if(isset($_POST['lock_but']))  {
        try {   
            $ctl -> lockManager();
            echo '<META HTTP-EQUIV="Refresh" Content="0">';
        }
        
        catch(Exception $e) {
            $error_msg = $e->getMessage();
        }
    
    }
    if(isset($_POST['date_submit']))  {
        try {   
            $ctl -> openManager();
            echo '<META HTTP-EQUIV="Refresh" Content="0">';
        }
        
        catch(Exception $e) {
            $error_msg = $e->getMessage();
        }
    
    }
?>
