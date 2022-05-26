<?php
    
    class UpdateModel {
        
        public function __construct() {
            require('connect.php');
            $this->pdo = new PDO("mysql:host=$host; dbname=$dbname;", $username, $password);
        }

        public function update() {

            $f_cccd=$f_name=$b_date=$gender=$que_tinh=$que_huyen=$que_xa=$que_duong=$thuong_tinh=$thuong_huyen=$thuong_xa=$thuong_duong
            =$tam_tinh=$tam_huyen=$tam_xa=$tam_duong=$van_hoa=$ton_giao=$job=$ma_vung="";
            $f_cccd_old = "";
            $error_msg="";
           

            if(isset($_POST['update_but'])) 
            {
                
            try {   
                $f_cccd_old = $_POST['f_cccd_old'];
                $f_cccd=$_POST['f_cccd'];
                $f_name = $_POST['f_name'];
                $b_date = $_POST['b_date'];
                $gender = $_POST['gender'];
                $que_duong = $_POST['que_duong'];
                

                $thuong_duong = $_POST['thuong_duong'];


                $tam_duong = $_POST['tam_duong'];

                $van_hoa = $_POST['van_hoa'];   
                $ton_giao = $_POST['ton_giao'];
                $job = $_POST['job'];
               
                include('connect.php');
                
                $stmt = $this -> pdo ->prepare("UPDATE `info` SET `cccd` = ?, `ten` = ?,
                 `ngaySinh` = ?, `gioiTinh` = ?,
                 `queQuan` = ?, `diaChiThuongTru` = ?, `diaChiTamTru` = ?,
                  `tonGiao` = ?, `trinhDoVanHoa` = ?, `ngheNghiep` = ? WHERE cccd = ?;");


                $stmt -> bindValue(1, $f_cccd);
                $stmt -> bindValue(2, $f_name);
                $stmt -> bindValue(3, $b_date);
                $stmt -> bindValue(4, $gender);
                $stmt -> bindValue(5, $que_duong);
                $stmt -> bindValue(6, $thuong_duong);
                $stmt -> bindValue(7, $tam_duong);
                $stmt -> bindValue(8, $ton_giao);
                $stmt -> bindValue(9, $van_hoa);
                $stmt -> bindValue(10, $job);
                $stmt -> bindValue(11, $f_cccd_old);
                
                $stmt -> execute();
                
                $message = "New records updated successfully";
                echo "<script type='text/javascript'>alert('$message');</script>";
                
 
            }
            
            catch(Exception $e) {
                $error_msg = $e->getMessage();
            }
            
            }
           
        }
    }
?>
