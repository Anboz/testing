<?php
header("Content-Type: text/html; charset='utf-8'");
require_once 'classes/rooms.php';
$page = "add_room";
if(strlen($_GET['page']) > 0){
	$page = $_GET['page'];
}
if(file_exists('classes/' . $page . '.php')) {
	require_once 'classes/' . $page . '.php';
	if(class_exists($page)) {
		$object = new $page;
		$object->getBody();
	} else {
		require_once 'contents/500.tpl';
	}
} else {
	require_once 'contents/404.tpl'; 
}
?>