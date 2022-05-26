<?php
    require_once('../models/infoModel.php');
    $model = new InfoModel();
?>
<html>
    <section>
      <style scoped>
        @media screen and (min-width: 800px) {
          
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
        <div class="header-container">
          <div class="row col-sm-12">
            <form class="custom-form select-form" method="post">
              <div class="form-group">
                <div class="col-sm-offset-3 col-sm-3 tam-tru">
                  <select class="form-control thanh_pho" id="chon_tinh" name="chon_tinh">
                    <option value="">-Tỉnh/Thành phố-</option>
                    //Lấy danh sách các Tỉnh/Thành phố
                    <?php $thanhPho = $model->getThanhPho($_SESSION['login']); ?>
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
          $ret = $model->getInfo();
          $arr = json_encode(array("status"=>"OK", "data" => $ret), JSON_UNESCAPED_UNICODE);
          //generate json file cập nhật lại sau mỗi lần truy cập
          $bytes = file_put_contents("../public/info.json", $arr);
          require_once('../public/html/statistics.html');
        } catch (Exception $e) {
          $error_msg = $e->getMessage();
        }
      }
    
?>

