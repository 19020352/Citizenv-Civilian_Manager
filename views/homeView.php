<?php
/*$user=0;
  $login=0;*/
session_start();
/*if (isset($_SESSION['newSession'])) {
    $login=1;
    $user=1;
  }*/
//print_r($_SESSION);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CitizenV</title>
  <link rel="icon" href="../public/images/favicon.ico">
  <link rel="shortcut icon" href="../public/images/favicon.ico" />


  <!-- Bootstrap + JQuery CSS -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/css/font-awesome.min.css" rel="stylesheet">
  <link href="../assets/css/jquery-ui.css" rel="stylesheet">
  <link href="../assets/css/responsive.css" rel="stylesheet">

  <!-- Bootstrap + JQuery JS -->
  <script src="../assets/js/jquery.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/js/jquery-ui-1.9.2.datepicker.min.js"></script>

  <!-- Custom styles for this template -->
  <link href="../public/css/style.css" rel="stylesheet">
</head>

<body class="text-center">
  <header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
            <span style="color: rgb(24, 163, 197);">
              <img src="../public/images/logo.png" height="30" width="30">
              CitizenV
            </span>
          </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">

            <li class=" 
              <?php if (strlen((string)$_SESSION['login']) < 6) {
                echo 'hidden';
              } else {
                if (!isset($_GET['page']) || (isset($_GET['page']) && $_GET['page'] == '1')) {
                  echo 'active';
                }
              } ?>">
              <a href="?page=1">Nhập liệu</a>
            </li>

            <li <?php
                if (strlen((string)$_SESSION['login']) == 8) {
                  echo 'class="hidden"';
                }
                if ((!isset($_GET['page']) && strlen((string)$_SESSION['login']) < 6) || (isset($_GET['page']) && $_GET['page'] == '2')) {
                  echo 'class="active"';
                }
                ?>>
              <a href="?page=2">Dữ liệu</a>
            </li>

            <li <?php if (strlen((string)$_SESSION['login']) == 8) {
                  echo 'class="hidden"';
                }
                if (isset($_GET['page']) && $_GET['page'] == '3') echo 'class="active"' ?>>
              <a href="?page=3">Thống kê</a>
            </li>

            <li <?php if (strlen((string)$_SESSION['login']) == 8) {
                  echo 'class="hidden"';
                }
                if (isset($_GET['page']) && $_GET['page'] == '4') echo 'class="active"' ?>>
              <a href="?page=4">Quản lý</a>
            </li>

            <li class="dropdown <?php if (isset($_GET['page']) && $_GET['page'] == '5') echo 'active' ?>">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                Tài khoản[<?php print_r($_SESSION['login']) ?>]<span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <li class="noafter 
                  <?php
                  if ((strlen((string)$_SESSION['login']) == 1)) echo 'hidden';
                  if (isset($_GET['page']) && $_GET['page'] == '5') echo 'active'; ?>"
                ><a href="?page=5">Báo cáo tiến độ</a></li>
                <li class="noafter"><a href="?page=6">Đăng xuất</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
  </header>

</html>
<?php require "../controllers/navigation.php"; ?>