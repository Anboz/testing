<?php

	require_once "check.php";
  class home extends rooms{
  	
   function getContent(){
   		$checkRoom = new check();
  		$all_rooms = $this->db->selectInfo("SELECT *FROM tbl_free_rooms");
  		$roomsForPages = array();  		
  		for($i = 0; $i < count($all_rooms); $i++){  	 
  		 	$all_rooms[$i]['color'] = $checkRoom->get_status_today($all_rooms[$i]['id'])['color'];
  		 	$all_rooms[$i]['status'] = $checkRoom->get_status_today($all_rooms[$i]['id'])['status'];
  		 	$all_rooms[$i]['name'] = $checkRoom->get_status_today($all_rooms[$i]['id'])['name'];	
  		 	} 
  		// print_r($all_rooms);	
  		$counter = 0;
  		$index = array();
  	    $status = "green";
  		 for($i = 0; $i < (count($all_rooms) / 12); $i++){  		 
  		 $index[$i]['page'] = $i + 1;  		  	   
  			for($j = 0; $j < 12; $j++){
  			 	$roomsForPages[$i][] = $all_rooms[$counter];
  				$counter++;
  			}
  		
  		} 
  		
  				
  		require_once 'contents/home.tpl';
  	}
  	
  	
  	
  }


?>