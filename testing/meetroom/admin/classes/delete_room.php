<?php
  class delete_room extends rooms{
  	
   function getContent(){
  		if(trim($_GET['id'])!=""){
  			$this->db->deleteInfo("DELETE FROM tbl_free_rooms WHERE id = '".$_GET['id']."'");
  			$this->db->deleteInfo("DELETE FROM tbl_bron_room WHERE id = '".$_GET['id']."'");
  		}
  		
  		$rooms = $this->db->selectInfo("SELECT *FROM tbl_free_rooms");
  		
  		require_once 'contents/delete_room.tpl';
  	}
  	
  	
  	
  }


?>