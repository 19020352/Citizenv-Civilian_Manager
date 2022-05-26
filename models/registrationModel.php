<?php
    
    class RegistrationModel {

        public function __construct() {
            require('connect.php');
            $this->pdo = new PDO("mysql:host=$host; dbname=$dbname;", $username, $password);
        }

        public function getQuyen($uname) {
            echo $uname;
                
            $stmt = $this -> pdo ->query("SELECT quyen FROM user WHERE username LIKE '$uname'");
            return $stmt -> fetchAll(PDO::FETCH_ASSOC);
                
        }

        public function submit() {

            $f_cccd=$f_name=$b_date=$gender=$que_tinh=$que_huyen=$que_xa=$que_duong=$thuong_tinh=$thuong_huyen=$thuong_xa=$thuong_duong
            =$tam_tinh=$tam_huyen=$tam_xa=$tam_duong=$van_hoa=$ton_giao=$job=$ma_vung=NULL;
            $error_msg=NULL;
            $que_quan = $thuong_tru= $tam_tru="";

        
            if(isset($_POST['submit_but'])) 
            {
            try {   
                $f_cccd=$_POST['f_cccd'];
                $f_name = $_POST['f_name'];
                $b_date = $_POST['b_date'];
                $gender = $_POST['gender'];

                
                $que_quan = $_POST['que_quan'];
                
                
                $thuong_tru = $_POST['thuong_tru'];

               
                $tam_tru = $_POST['tam_tru'];

                $van_hoa = $_POST['van_hoa'];   
                $ton_giao = $_POST['ton_giao'];
                $job = $_POST['job'];
                $ma_vung = $_POST['ma_vung'];

                $lenCccd = strlen($f_cccd);

                // Kiểm tra hợp thức trước khi insert date lên server
                if($lenCccd == 9 || $lenCccd == 12 && isset($f_name) && isset($b_date) && isset($gender) &&
                isset($que_quan) && isset($thuong_tru) && isset($tam_tru) && isset($van_hoa) && isset($ma_vung)) {

                    $stmt = $this -> pdo ->prepare("INSERT INTO `info` (`cccd`, `ten`, `ngaySinh`, `gioiTinh`, `queQuan`, `diaChiThuongTru`, `diaChiTamTru`, `tonGiao`, `trinhDoVanHoa`, `ngheNghiep`, `maDiaChi`) 
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

                
                    $stmt -> bindValue(1, $f_cccd);
                    $stmt -> bindValue(2, $f_name);
                    $stmt -> bindValue(3, $b_date);
                    $stmt -> bindValue(4, $gender);
                    $stmt -> bindValue(5, $que_quan);
                    $stmt -> bindValue(6, $thuong_tru);
                    $stmt -> bindValue(7, $tam_tru);
                    $stmt -> bindValue(8, $ton_giao);
                    $stmt -> bindValue(9, $van_hoa);
                    $stmt -> bindValue(10, $job);
                    $stmt -> bindValue(11, $ma_vung);
                    
                    $stmt -> execute();
                    
                    $message = "Nhập dữ liệu thành công!";
                    echo "<script type='text/javascript'>alert('$message');</script>";
                } /*else {
                    $message = "Nhập dữ liệu thất bại!";
                    echo "<script type='text/javascript'>alert('$message');</script>";
                }*/

            }
            
            catch(Exception $e) {
                $error_msg = $e->getMessage();
            }
            
            }
           
        }
    }
?>
