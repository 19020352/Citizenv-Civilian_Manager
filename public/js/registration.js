$(document).ready(function () {
  $(function () {

    $('.datepicker').datepicker({
        dateFormat: 'yy-mm-dd',
        defaultDate: "1960-01-01",
        yearRange: "c-30:c+60",
        dayNamesMin: [ "CN", "T2", "T3", "T4", "T5", "T6", "T7" ],
        monthNamesShort: [ "Th 1", "Th 2", "Th 3", "Th 4", "Th 5",
         "Th 6", "Th 7", "Th 8", "Th 9", "Th 10", "Th 11", "Th 12" ],
        changeMonth: true,
        changeYear: true
    });
  
  });
})
