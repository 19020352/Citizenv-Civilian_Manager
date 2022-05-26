<?php
  
  if ((!isset($_GET['page']))) {
    if (strlen((string)$_SESSION['login']) < 6) {
      include 'infoController.php';
    } else {
      include 'registrationController.php';
    }
  } else {
    $page=$_GET['page'];

    if ($page == '1'){

      include 'registrationController.php';
    }
    else if ($page == '2'){
      include 'infoController.php';
    }
    else if ($page == '3'){
      include 'statisticsController.php';
    }
    else if ($page == '4'){
      include 'manageController.php';
    }
    else if ($page == '5'){
      include 'reportController.php';
    }
    else if ($page == '6'){
      session_unset(); 
      session_destroy();
      header('Location: ../index.php');
    }
  }
?>