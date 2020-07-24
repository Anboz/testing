<?php
  require_once "db.php";
 
 class check {
  
 	private	function between($num, $min, $max){
  		return ($num >= $min && $num <= $max);
  	}
  	
  public function get_status_today($id){
      $db = new DB("db_meetingroom");
  	   $status = ['color'=>'green',
  	    		'status'=>'Свабодно',
  	    		'name'=>''];
       $minFtimeTtime = $db->selectInfo("SELECT MIN(fromtime) AS mft, MIN(totime) AS mtt FROM tbl_bron_room WHERE id = '".$id."' AND fromdate = CAST('".date('Y-m-d')."' AS DATE)");
              
  	    if($minFtimeTtime[0]['mft']!= ''){
  	     if($this->between(strtotime($minFtimeTtime[0]['mft']), time(), time() + 1800))
  	        {
	  	     	$status['color'] = "orange";
	  	     	$status['status'] = " Будет занято через ".date('i:s',(strtotime($minFtimeTtime[0]['mft']) - time()));
	  	     	$status['name'] = $db->selectInfo("SELECT name FROM tbl_bron_room WHERE id = '".$id."' AND fromdate = CAST('".date('Y-m-d')."' AS DATE) AND fromtime=CAST('".$minFtimeTtime[0]['mft']."'AS TIME)")[0]['name'];	  	   
			}
			elseif(strtotime($minFtimeTtime[0]['mft']) < time())
			{
				$status['color'] = "red";
	  	     	$status['status'] = "Занято до ".date('H:i', strtotime($minFtimeTtime[0]['mtt']));
				$status['name'] = $db->selectInfo("SELECT name FROM tbl_bron_room WHERE id = '".$id."' AND fromdate = CAST('".date('Y-m-d')."' AS DATE) AND fromtime=CAST('".$minFtimeTtime[0]['mft']."'AS TIME)")[0]['name'];	  	   
			}
			elseif(strtotime($minFtimeTtime[0]['mft']) > time() + 1800)
			{
				$status['color'] = "green";
	  	     	$status['status'] = "Свабодно до ".date('H:i',time() + (strtotime($minFtimeTtime[0]['mft']) - (time() + 1800)));
				$status['name'] = $db->selectInfo("SELECT name FROM tbl_bron_room WHERE id = '".$id."' AND fromdate = CAST('".date('Y-m-d')."' AS DATE) AND fromtime=CAST('".$minFtimeTtime[0]['mft']."'AS TIME)")[0]['name'];	  	   
			}
  	   }  	   
  	   return($status);  		
  	}
 	
 	
 }
  if($_POST['idForChecking']!=''){
	    $ch = new check();	  
	    $satr = $ch->get_status_today(trim($_POST['idForChecking']));
    	echo $satr['color'].'|'.$satr['status'];
   } 
 
    /* $ch = new check();	  
	 $satr = $ch->get_status_today(1);
     print_r($satr);*/
?>