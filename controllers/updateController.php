<?php
    require_once('../models/updateModel.php');
    require_once('../views/infoView.php');

    class UpdateController {
        
        public function __construct() {

        }

        public function proc() { 

            $model = new UpdateModel();
            $model -> update();
        }
    }
?>