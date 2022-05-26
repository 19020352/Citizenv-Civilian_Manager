<?php
    require_once('../models/deleteModel.php');
    require_once('../views/infoView.php');

    class DeleteController {
        
        public function __construct() {

        }

        public function proc() { 

            $model = new DeleteModel();
            $model -> delete();
        }
    }
?>