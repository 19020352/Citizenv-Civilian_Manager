<?php
    require_once('../models/manageModel.php');
    require_once('../views/manageView.php');
        
        class ManageController {
        
            public function __construct() {
                
            }

            public function getQuyen($uname) { 

                $model = new ManageModel();
                $result = $model -> getQuyen($uname);
                
                return $result;   
                
            }

            public function proc() { 

                $model = new ManageModel();
                $result = $model -> getManager();
                $arr = array("status"=>"OK", "data" => $result);
               
                return json_encode($arr, JSON_UNESCAPED_UNICODE);    
                
            }

            public function addManager() { 

                $model = new ManageModel();
                $model -> submitAddManager();  
                
            }
            
            public function editManager() { 

                $model = new ManageModel();
                $model -> editManager();  
                
            }

            public function deleteManager() { 

                $model = new ManageModel();
                $model -> deleteManager();  
                
            }

            public function openManager() { 

                $model = new ManageModel();
                $model -> openManager();  
                
            }

            public function lockManager() { 

                $model = new ManageModel();
                $model -> lockManager();  
                
            }

        }