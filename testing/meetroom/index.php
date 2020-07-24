<?php
header("Content-Type: text/html; charset='utf-8'");
require_once 'classes/rooms.php';
 date_default_timezone_set("Asia/Dushanbe"); 
$page = "all_rooms";
if(strlen($_GET['page']) > 0){
	$page = $_GET['page'];
}
if(file_exists('classes/' . $page . '.php')) {
	require_once 'classes/' . $page . '.php';
	if(class_exists($page)) {
		$object = new $page;
		$object->getBody();
	} else {
		require_once 'contents/505.tpl';
	}
} else {
	require_once 'contents/404.tpl'; 
}
?>