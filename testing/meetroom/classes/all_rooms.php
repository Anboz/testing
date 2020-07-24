<?php
   require_once("check.php");
  class all_rooms extends rooms{
  	 
   function getContent(){
  		$checkRoom = new check();
  		if(!isset($_GET['index'])) $_GET['index'] = 1;  		
  		$page = ($_GET['index'] - 1) * 8;
  		$all_rooms = $this->db->selectInfo("SELECT *FROM tbl_free_rooms LIMIT  $page, 8");
  		$countPages = $this->db->selectInfo("SELECT COUNT(id) AS c FROM tbl_free_rooms")[0]['c'];  		
  		 		
  		for($i = 0; $i < count($all_rooms); $i++){  	 
  		 	$all_rooms[$i]['color'] = $checkRoom->get_status_today($all_rooms[$i]['id'])['color'];
  		 	$all_rooms[$i]['status'] = $checkRoom->get_status_today($all_rooms[$i]['id'])['status'];
  		 	$all_rooms[$i]['name'] = $checkRoom->get_status_today($all_rooms[$i]['id'])['name']; 
		} 		 	 	 
  		$index = array();
  		 for($i = 0; $i < $countPages / 8; $i++){  		 
  		 $index[$i]['page'] = $i + 1;  		  	     			   		
  		} 
  		 $_GET['index'] = (isset($_GET['index']) && $_GET['index'] > 1 && $_GET['index'] <= count($index)) ? $_GET['index'] : 1;			//echo(strtotime(substr($all_rooms[0]['status'],-5)) - time());
	 	 		
  		require_once 'contents/all_rooms.tpl';
  	}
  		
  }
?>