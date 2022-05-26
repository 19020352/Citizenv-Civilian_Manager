<?php
    require_once('../public/html/report.html');
    require_once('../controllers/reportController.php');

    $ctl = new ReportController();
    $ctl -> proc();
?>