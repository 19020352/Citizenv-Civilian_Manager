<?php
  require_once('../controllers/infoController.php');
  require_once('../controllers/updateController.php');
  require_once('../controllers/deleteController.php');
  $ctl = new InfoController();

?>
<html>
<section class="navbar-after">
  <style scoped> 
    @media screen and (min-width: 765px) {
      .header-container {
        padding-top: 45px;
      }
      .header-container {
        width: 100%;
        margin-left: auto;
        margin-right: auto;
        background-color: white;
        z-index: 1;
        position: fixed;
      }

      .tam-tru {
        margin-bottom: 10px;
      }   
    }

    @media screen and (max-width: 765px) {
      .header-container {
        padding-top: 65px;
      }
      .tam-tru {
        margin-bottom: 15px;
      }   
    }

  </style>
  <div class="container-fluid header-container">
    <div class="row col-sm-12">
      <form class="custom-form select-form" method="post">
        <div class="form-group">
          <div class="col-sm-offset-3 col-sm-3 tam-tru">
            <select class="form-control thanh_pho" id="chon_tinh" name="chon_tinh">
              <option value="">-Tỉnh/Thành phố-</option>
              //Lấy danh sách các Tỉnh/Thành phố
              <?php $thanhPho = $ctl->getThanhPho($_SESSION['login']); ?>
              <?php foreach ($thanhPho as $output) { ?>
                <option value="<?php echo $output['ma'] ?>"><?php echo $output['ten'] ?></option>
              <?php } ?>
            </select>
          </div>
          <div class="col-sm-3 tam-tru">
            <select class="form-control" id="chon_huyen" name="chon_huyen">
              <option value="">-Quận/Huyện-</option>
              //Lấy danh sách các Quận/Huyện theo Tỉnh/Thành phố
              //Ajax api
            </select>
          </div>
        </div>
        <div class="form-group">
        <div class="col-sm-offset-3 col-sm-3 tam-tru">
          <select class="form-control" id="chon_xa" name="chon_xa">
            <option value="">-Xã/Phường-</option>
            //Lấy danh sách các Phường/Xã
            //Ajax api
          </select>
        </div>
        <div class="col-sm-3 tam-tru">
          <select class="form-control" id="chon_thon" name="chon_thon" style="width: 100%">
            <option value="">-Thôn/Bản/Tổ dân phố-</option>
            //Lấy danh sách các Thôn/Bản/Tổ dân phố
            //Ajax api
          </select>
        </div>
        <div class="col-sm-1">
          <button class="btn btn-block submit-button" type="submit" id="submit-button" name="submit" ;>
            Tìm
          </button>
        </div>
      </form>
    </div>
    <div class="row col-sm-offset-4 col-sm-4 col-xs-offset-1 col-xs-10">
      <div id="search-box">
        <input type="search" id="search" placeholder="Nhập thông tin cần tìm" />
        <span class="search"><i class="fa fa-search" aria-hidden="true"></i></span>
      </div>
    </div>
  </div>
</section>
<script>
  $(document).ready(function() {
    $("#chon_tinh").change(function() {
      var ma = $(this).val();
      $.ajax({
        url: "../models/infoModel.php",
        method: "POST",
        data: {
          maThanhPho: ma
        },
        success: function(data) {
          $('#chon_huyen').html(data);
        }
      });
    });

    $("#chon_huyen").change(function() {
      var ma = $(this).val();
      $.ajax({
        url: "../models/infoModel.php",
        method: "POST",
        data: {
          maQuan: ma
        },
        success: function(data) {
          $('#chon_xa').html(data);
        }
      });
    });

    $("#chon_xa").change(function() {
      var ma = $(this).val();
      $.ajax({
        url: "../models/infoModel.php",
        method: "POST",
        data: {
          maThon: ma
        },
        success: function(data) {
          $('#chon_thon').html(data);
        }
      });
    });

  });
</script>

</html>

<?php
  if (isset($_POST['submit'])) {
    
    try {
      

      $ret = $ctl->proc();
      //generate json file cập nhật lại sau mỗi lần truy cập
      $bytes = file_put_contents("../public/info.json", $ret);
      
      $ctlt = new InfoController();
      $uname = (string)$_SESSION['login'];
      $result = $ctlt -> getQuyen($uname);
      $quyen = $result[0]["quyen"];
      
      if($quyen == 0){
        require_once('../public/html/info_notPermit.html');}
      if($quyen == 1){
        require_once('../public/html/info.html');}
    } catch (Exception $e) {
      $error_msg = $e->getMessage();
    }
  }

  
  if(isset($_POST['del_but'])) {
    $uname = (string)$_SESSION['login'];
    $result = $ctl -> getQuyen($uname);
    $quyen = $result[0]["quyen"];
     echo $quyen;
    if($quyen == 1) {
      $ctl3 = new DeleteController();
      $ctl3->proc();
      
    } 
  }

  if(isset($_POST['update_but'])) {
    $uname = (string)$_SESSION['login'];
    $result = $ctl -> getQuyen($uname);
    $quyen = $result[0]["quyen"];
     echo $quyen;
    if($quyen == 1) {
      $ctl2 = new UpdateController();
      $ctl2->proc();
      
    } 
  }

?>