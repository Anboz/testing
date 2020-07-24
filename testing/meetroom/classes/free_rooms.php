<?php
		 
 require_once 'check.php';
  class free_rooms extends rooms{
  	
   function getContent(){
  		 $check = new check();
  		$all_rooms = $this->db->selectInfo("SELECT *FROM tbl_free_rooms AS r WHERE (NOT EXISTS(SELECT *FROM tbl_bron_room AS b WHERE b.id = r.id AND b.fromdate = CAST('".date('Y-m-d')."' AS DATE) AND fromtime <= CAST('".date('H:i:s', time() + 3600)."' AS TIME)))");
  		$roomsForPages = array();  		 
  		$counter = 0;
  		$index = array();   
  		 for($i = 0; $i < (count($all_rooms) / 8); $i++){  		 
  		 $index[$i]['page'] = $i + 1;  		  	   
  			for($j = 0; $j < 8; $j++){
  			 	$roomsForPages[$i][] = $all_rooms[$counter];
  				$counter++;
  			}
  		
  		} 
  		
  		
  		 	$_GET['index'] = (isset($_GET['index']) && $_GET['index'] > 1 && $_GET['index'] <= count($index)) ? $_GET['index'] : 1; 		
  		 	 for($i = 0; $i < count($roomsForPages[$_GET['index'] - 1]); $i++)  		 	 	
  		      	$roomsForPages[$_GET['index'] - 1][$i]['status'] = $check->get_status_today($roomsForPages[$_GET['index'] - 1][$i]['id'])['status'];
  		 	// print_r($roomsForPages[$_GET['index'] - 1][1]);
  		 	
  		 	
  		require_once 'contents/free_rooms.tpl';
  	}
  	
  	
  	
  }


?>