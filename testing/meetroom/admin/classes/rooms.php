<?php
  require_once 'classes/db.php';
require_once("db.php");
abstract class rooms{
     
     protected $db = null;
     
	function getHeader(){
		require_once 'blocks/header.html';
	}
	
	function getFooter(){
		require_once 'blocks/footer.html';
	}
	function init(){
		$this->db = new DB('db_meetingroom');
	}
	
	function getBody(){
	    $this->init();
		if(isset($_POST['send']))
			$this->processing();		
		$this->getHeader();
		$this->getContent();
		$this->getFooter();
	}
		
}

?>