<?php
  require_once 'classes/db.php';
abstract class rooms{
     
     protected $db = null;
     
	private function getHeader(){
		require_once 'blocks/header.html';
	}
	
	private function getFooter(){
		require_once 'blocks/footer.php';
	}
	function init(){
		$this->db = new DB('db_meetingroom');
	}
	
	function getBody(){
		$this->init();
		if(isset($_POST['send']))
			$this->processing();
		if($_GET['page']!='bookRoom')		
		$this->getHeader();
		$this->getContent();
		$this->getFooter();
	}
	
	
	
}



?>