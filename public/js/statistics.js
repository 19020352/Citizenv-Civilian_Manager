male_count = 0;
female_count = 0;
tens = 0
twenties = 0;
thirties = 0;
forties = 0;
fifties = 0;
sixties = 0;
seventies = 0;
eighties = 0;
nineties = 0;

f_tens = 0
f_twenties = 0;
f_thirties = 0;
f_forties = 0;
f_fifties = 0;
f_sixties = 0;
f_seventies = 0;
f_eighties = 0;
f_nineties = 0;

const map1 = new Map();
const map2 = new Map();
const map3 = new Map();

$(document).ready(function () {
  $.getJSON("../public/info.json", function (ret) {
    if (ret.status == "OK") {
      tong = ret.data.length;
      for (i = 0; i < tong; i++) {
        age = ret.data[i].tuoi;

        if(ret.data[i].gioiTinh == "Nam") {
          male_count++;
          if(age > 9 && age < 20) {
            tens++;
          } else if (age > 19 && age < 30) {
            twenties++;
          } else if (age > 29 && age < 40) {
            thirties++;
          } else if (age > 39 && age < 50) {
            forties++;
          } else if (age > 49 && age < 60) {
            fifties++;
          } else if (age > 59 && age < 70) {
            sixties++;
          } else if (age > 69 && age < 80) {
            seventies++;
          } else if (age > 79 && age < 90) {
            eighties++;
          } else if (age > 89 && age < 100) {
            nineties++;
          } 
        } else {
          if(age > 9 && age < 20) {
            f_tens++;
          } else if (age > 19 && age < 30) {
            f_twenties++;
          } else if (age > 29 && age < 40) {
            f_thirties++;
          } else if (age > 39 && age < 50) {
            f_forties++;
          } else if (age > 49 && age < 60) {
            f_fifties++;
          } else if (age > 59 && age < 70) {
            f_sixties++;
          } else if (age > 69 && age < 80) {
            f_seventies++;
          } else if (age > 79 && age < 90) {
            f_eighties++;
          } else if (age > 89 && age < 100) {
            f_nineties++;
          }
        }

        job = ret.data[i].ngheNghiep;
        religion = ret.data[i].tonGiao;
        edu = ret.data[i].trinhDoVanHoa;

        if(map1.has(job)) {
          map1.get(job).val++;
        } else {
          map1.set(job, {val: 1});
        }

        if(map2.has(religion)) {
          map2.get(religion).val++;
        } else {
          map2.set(religion, {val: 1});
        }

        if(map3.has(edu)) {
          map3.get(edu).val++;
        } else {
          map3.set(edu, {val: 1});
        }
        
      }
      female_count = tong-male_count;

      // $('.gioi-tinh-so-lieu-1').append(
      //   '<p class="text-left"><br>T???ng s??? d??n l?? ' + tong + ', trong ???? g???m c??: ' + 
      //   male_count + ' nam v?? ' + 
      //   female_count + ' n???.' +
      //   '</p>'
      // );
      // $('.gioi-tinh-so-lieu-2').append(
      //   '<p class="text-left">' +
      //     '<br>S??? nam/n??? 10-20 tu???i: ' + tens + '/' + f_tens + 
      //     '<br>S??? nam/n??? 20-30 tu???i: ' + twenties + '/' + f_twenties + 
      //     '<br>S??? nam/n??? 30-40 tu???i: ' + thirties + '/' + f_thirties + 
      //     '<br>S??? nam/n??? 40-50 tu???i: ' + forties + '/' + f_forties + 
      //     '<br>S??? nam/n??? 50-60 tu???i: ' + fifties + '/' + f_fifties + 
      //     '<br>S??? nam/n??? 60-70 tu???i: ' + sixties + '/' + f_sixties + 
      //     '<br>S??? nam/n??? 70-80 tu???i: ' + seventies + '/' + f_seventies + 
      //     '<br>S??? nam/n??? 80-90 tu???i: ' + eighties + '/' + f_eighties + 
      //   '</p>'
      // );
    }
  });
});
// Load the Visualization API and the corechart package.
google.charts.load('current', { 'packages': ['corechart'] });
google.charts.load('current', {'packages':['bar']});
// Set a callback to run when the Google Visualization API is loaded.
google.charts.setOnLoadCallback(drawGenderTotalChart);
google.charts.setOnLoadCallback(drawGenderAgeGroupChart);
google.charts.setOnLoadCallback(drawJobChart);
google.charts.setOnLoadCallback(drawTonGiaoChart);
google.charts.setOnLoadCallback(drawVanHoaChart);

// Callback that creates and populates a data table,
// instantiates the pie chart, passes in the data and
// draws it.
function drawGenderTotalChart() {

  // Create the data table.

  var data = google.visualization.arrayToDataTable([
    ['Gi???i t??nh', 'S??? l?????ng'],
    ['Nam', male_count],
    ['N???', female_count]
  ]);
  // Set chart options

  var options = {
    'title': 'C?? c???u gi???i t??nh',
  };

  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.PieChart(document.getElementById('chart_gender_1'));
  chart.draw(data, options);
}

function drawGenderAgeGroupChart() {
  var data = google.visualization.arrayToDataTable([
    ['????? tu???i', 'Nam', 'N???'],
    ['10-20', tens, f_tens],
    ['20-30', twenties, f_twenties],
    ['30-40', thirties, f_thirties],
    ['40-50', forties, f_forties],
    ['50-60', fifties, f_fifties],
    ['60-70', sixties, f_sixties],
    ['70-80', seventies, f_seventies],
    ['80-90', eighties, f_eighties],
    ['90-100', nineties, f_nineties]
  ]);

  var options = {
    chart: {
      'title': 'C?? c???u gi???i t??nh theo ????? tu???i',
    }
  };

  var chart = new google.charts.Bar(document.getElementById('chart_gender_2'));

  chart.draw(data, google.charts.Bar.convertOptions(options));
}

function drawJobChart() {

  // Create the data table.
  var chartdata=[];
  var Header = ['Ngh???', '?????m'];
  chartdata.push(Header);
  for (const [key, value] of map1.entries()) {
    var temp=[];
    temp.push(key);
    temp.push(value.val);
    chartdata.push(temp);
  }

  var data = google.visualization.arrayToDataTable(chartdata);
  // Set chart options

  var options = {
    'title': 'C?? c???u ngh??? nghi???p',
  };

  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.PieChart(document.getElementById('chart_job'));
  chart.draw(data, options);
}

function drawTonGiaoChart() {

  // Create the data table.
  var chartdata=[];
  var Header = ['T??n gi??o', '?????m'];
  chartdata.push(Header);
  for (const [key, value] of map2.entries()) {
    var temp=[];
    temp.push(key);
    temp.push(value.val);
    chartdata.push(temp);
  }

  var data = google.visualization.arrayToDataTable(chartdata);
  // Set chart options

  var options = {
    'title': 'C?? c???u t??n gi??o',
  };

  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.PieChart(document.getElementById('chart_tongiao'));
  chart.draw(data, options);
}

function drawVanHoaChart() {

  // Create the data table.
  var chartdata=[];
  var Header = ['Tr??nh ????? v??n h??a', '?????m'];
  chartdata.push(Header);
  for (const [key, value] of map3.entries()) {
    var temp=[];
    temp.push(key);
    temp.push(value.val);
    chartdata.push(temp);
  }

  var data = google.visualization.arrayToDataTable(chartdata);
  // Set chart options

  var options = {
    'title': 'C?? c???u tr??nh ????? v??n h??a',
  };

  // Instantiate and draw our chart, passing in some options.
  var chart = new google.visualization.PieChart(document.getElementById('chart_vanhoa'));
  chart.draw(data, options);
}