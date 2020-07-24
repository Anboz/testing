<?php
  class add_room extends rooms{
   
   function processing(){
         if(trim($_POST['title'])!=""){
         //echo $_POST['title'];
         	$this->db->insertInfo("INSERT INTO tbl_free_rooms (title)VALUES('".trim($_POST['title'])."')");
         }
   }	
  	
  	
   function getContent(){
  		
  		require_once 'contents/add_room.tpl';
  	}
  	
  	
  	
  }


?>