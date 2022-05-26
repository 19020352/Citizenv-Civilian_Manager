// thêm nút lưu, sửa, xóa vào bảng, dòng có stt 1 nút xóa có id=del_1, nút sửa có id=edit_1
// ban đầu để lưu disable, chỉ được enable khi nút sửa/xóa được bấm
// chưa xử lý event, 


$(document).ready(function () {
  //tìm kiếm search box
  $("#search").keyup(function () {
    _this = this;
    // Show only matching TR, hide rest of them
    $.each($("#table tbody tr"), function () {
      if ($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
        $(this).hide();
      else
        $(this).show();
    });
  });

  //nút sửa được ấn
  $(document).on('click','.btn-primary', function(event) {
    get_id = $(this).attr('id');
    get_row = get_id.split('-')[1]; //lấy row bằng số sau dấu -
    
    $('#infoEditModal #cccd_old').val($("#cccd-" + get_row).text());
    $('#infoEditModal #cccd').val($("#cccd-" + get_row).text());
    $('#infoEditModal #ten').val($("#ten-" + get_row).text());
    $('#infoEditModal #ngay-sinh').val($("#ngay-sinh-" + get_row).text());
    $('#infoEditModal #que').val($("#que-quan-" + get_row).text());
    $('#infoEditModal #thuong-tru').val($("#thuong-tru-" + get_row).text());
    $('#infoEditModal #tam-tru').val($("#tam-tru-" + get_row).text());
    $('#infoEditModal #van-hoa').val($("#van-hoa-" + get_row).text());
    $('#infoEditModal #ton-giao').val($("#ton-giao-" + get_row).text());
    $('#infoEditModal #job').val($("#nghe-nghiep-" + get_row).text());
    console.log($("#gioi-tinh-" + get_row).html());
    console.log($("#cccd-" + get_row).html());
    console.log($("#cccd-" + get_row).html());
    if ($("#gioi-tinh-" + get_row).text() == "Nữ") {
      $("#infoEditModal .female").addClass("active");
      $("#infoEditModal .male").removeClass("active");
    } else {
      $("#infoEditModal .male").addClass("active");
      $("#infoEditModal .female").removeClass("active");
    }

    $('#infoEditModal').modal('show');
  });

  // click nút xóa info
  $(document).on('click','.btn-danger', function(event) {
    get_id = $(this).attr('id');
    get_row = get_id.split('-')[1]; //lấy row bằng số sau dấu -
    
    $('#infoDelModal #cccd_old').val($("#cccd-" + get_row).text());

    $('#infoDelModal').modal('show');
  });

  $(function () {

    $('.datepicker').datepicker({
      dateFormat: "yy-mm-dd",
      defaultDate: "1960-01-30",
      yearRange: "c-30:c+60",
      dayNamesMin: ["CN", "T2", "T3", "T4", "T5", "T6", "T7"],
      monthNamesShort: ["Th 1", "Th 2", "Th 3", "Th 4", "Th 5",
        "Th 6", "Th 7", "Th 8", "Th 9", "Th 10", "Th 11", "Th 12"],
      changeMonth: true,
      changeYear: true
    });

  });

  $.getJSON("../public/info.json", function (ret) {
    if (ret.status == "OK") {
      for (i = 0; i < ret.data.length; i++) {
        $("#table tbody").append(
          "<tr>" +
          "<td>" + (i + 1) + "</td>" +
          "<td id=cccd-" + (i + 1) + ">" + ret.data[i].cccd + "</td>" +
          "<td id=ten-" + (i + 1) + ">" + ret.data[i].ten + "</td>" +
          "<td id=ngay-sinh-" + (i + 1) + ">" + ret.data[i].ngaySinh + "</td>" +
          "<td id=gioi-tinh-" + (i + 1) + ">" + ret.data[i].gioiTinh + "</td>" +
          "<td id=que-quan-" + (i + 1) + ">" + ret.data[i].queQuan + "</td>" +
          "<td id=thuong-tru-" + (i + 1) + ">" + ret.data[i].diaChiThuongTru + "</td>" +
          "<td id=tam-tru-" + (i + 1) + ">" + ret.data[i].diaChiTamTru + "</td>" +
          "<td id=ton-giao-" + (i + 1) + ">" + ret.data[i].tonGiao + "</td>" +
          "<td id=van-hoa-" + (i + 1) + ">" + ret.data[i].trinhDoVanHoa + "</td>" +
          "<td id=nghe-nghiep-" + (i + 1) + ">" + ret.data[i].ngheNghiep + "</td>" +
          "<td>" +
          "<button class='btn btn-primary' id=edit-" + (i + 1) + ">Sửa</button>" +
          "<button class='btn btn-danger' id=del-" + (i + 1) + ">Xóa</button>" +
          "</td>" +
          + "</tr>"
        )
      }
    }
  });
});


