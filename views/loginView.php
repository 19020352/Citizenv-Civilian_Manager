<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CitizenV</title>
  <link rel="icon" href="./public/images/favicon.ico">
  <link rel="shortcut icon" href="./public/images/favicon.ico" />
  
  <!-- Bootstrap + JQuery CSS -->
  <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
  <link href="./assets/css/font-awesome.min.css" rel="stylesheet">
  <link href="./assets/css/responsive.css" rel="stylesheet">

  <!-- Bootstrap + JQuery JS -->
  <script src="./assets/js/jquery.min.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>

  <!-- Custom styles for this template -->
  <link href="./public/css/style.css" rel="stylesheet">
</head>
</html>
<?php
    require_once('./public/html/login.html');
    require_once('./controllers/loginController.php');
    $ctl = new loginController();
    $ctl -> proc();

?>

