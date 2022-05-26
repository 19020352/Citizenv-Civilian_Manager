<?php
    require_once('../views/reportView.php');

    class ReportController {
        
        public function __construct() {
            require('../models/connect.php');
            $this->pdo = new PDO("mysql:host=$host; dbname=$dbname;", $username, $password);
        }

        public function proc() { 
            
            if(isset($_POST['complete'])) {

                $uname = $_SESSION['login'];
                $tienDo = "Hoàn thành";
                $stmt = $this -> pdo ->prepare("UPDATE user SET tienDo = ? WHERE username = ? ;");

                $stmt -> bindValue(1, $tienDo);
                $stmt -> bindValue(2, $uname);
                $stmt -> execute();
                $message = "Đã báo cáo thành công!";
                echo "<script type='text/javascript'>alert('$message');</script>";
            }

            if(isset($_POST['incomplete'])) {

                $uname = $_SESSION['login'];
                $tienDo = "Chưa hoàn thành";
                $stmt = $this -> pdo ->prepare("UPDATE user SET tienDo = ? WHERE username = ? ;");

                $stmt -> bindValue(1, $tienDo);
                $stmt -> bindValue(2, $uname);
                $stmt -> execute();

                $message = "Đã báo cáo thành công!";
                echo "<script type='text/javascript'>alert('$message');</script>";
            }
        }
    }
?>