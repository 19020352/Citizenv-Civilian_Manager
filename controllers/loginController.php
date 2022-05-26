<?php
    session_start();
    require_once('./models/loginModel.php');
    require_once('./views/loginView.php');
    
    class LoginController {
    
        public function __construct() {

        }

        public function proc() { 
            
            if (isset($_POST['username']) && isset($_POST['password'])) {
                
                if (!empty($_POST['username']) && !empty($_POST['password'])) {
                    
                    $uname = $_POST['username'];
                    $passwd = $_POST['password'];

                    $model = new UserModel();
                    $result = $model -> checkAuth($uname, $passwd);
                    if ($result) {
                        $_SESSION["login"] = $uname;
                        header('Location: views/homeView.php');
                    } else {
                        echo '<script type="text/javascript">$(".alert").css("visibility", "visible");</script>';
                    }
                }
            }
        }
    }
?>