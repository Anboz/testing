<?php
    require_once 'check.php';
  class bookRoom extends rooms{
  	private $error = "";
  function processing()
  {
  if(trim($_POST['name']) =='')$this->error = "Введите имя <br>";
  	 if(trim($_POST['name']) !='' && isset($_POST['fromdate']) && isset($_POST['fromtime']) && isset($_POST['totime']) && isset($_POST['id']))
  	 { 
  	   
	  	   if(strtotime($_POST['fromdate']) >= strtotime(date("Y-m-d")) && strtotime($_POST['fromtime']) < strtotime($_POST['totime']))
	  	   {
	  	    if($_POST['fromdate'] == date("Y-m-d") && strtotime($_POST['fromtime']) <= time())
	  	    {
	  	    	$this->error = "Время устаноленно неправильно!";
	  	    	return false;
	  	    }
			if(count($this->db->selectInfo("SELECT id FROM tbl_bron_room WHERE id = '".$_POST['id']."' AND fromdate = CAST('".$_POST['fromdate']."' AS DATE) AND (fromtime BETWEEN CAST('".$_POST['fromtime']."' AS TIME) AND CAST('".$_POST['totime']."' AS TIME) OR totime BETWEEN CAST('".$_POST['fromtime']."' AS TIME) AND CAST('".$_POST['totime']."' AS TIME))")) == 0) 
			{
			 
	  	 	 $this->db->insertInfo("INSERT INTO tbl_bron_room (id, name, fromdate, fromtime, totime)VALUES('".$_POST['id']."', '".$_POST['name']."', '".$_POST['fromdate']."', '".$_POST['fromtime']."', '".$_POST['totime']."')");
	  	 	header("location:?page=booked");
			}
			else
				$this->error = ($this->error == "")? "Время устаноленно неправильно!" : $this->error;
			}
			else
				$this->error = ($this->error == "")? "Время устаноленно неправильно!" : $this->error;
	 }
	 else
	 	$this->error = ($this->error == "")? "Время устаноленно неправильно!" : $this->error;
	 
  }
  	
   function getContent(){
  		$checkRoom = new check();
  		$room = NULL;
  		$status = null;		 
  		$checkedRoom = $checkRoom->get_status_today($_GET['id'])['color'] == 'green';
  		 if($checkedRoom){
  		 	$room = $this->db->selectInfo("SELECT *FROM tbl_free_rooms WHERE id = '".$_GET['id']."'");  
  		 	$status = $this->db->selectInfo("SELECT *FROM tbl_bron_room WHERE id = '".$_GET['id']."' ORDER BY fromdate");  		 	 
  		 //	print_r($status);
  		 }
  		  		
  		require_once 'contents/bookRoom.tpl';
  	}
  	
  	
  	
  }


?>