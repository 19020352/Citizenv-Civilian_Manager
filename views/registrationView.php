<?php
    require_once('../controllers/registrationController.php');
    $ctlt = new RegistrationController();
    $uname = (string)$_SESSION['login'];
    $result = $ctlt -> getQuyen($uname);
    $quyen = $result[0]["quyen"];
    if($quyen == 1){
    require_once('../public/html/registration.html');}
    if($quyen == 0){
        require_once('../public/html/registration_notPermit.html');}
    

    $ctl = new RegistrationController();
    $ctl -> proc();
?>

