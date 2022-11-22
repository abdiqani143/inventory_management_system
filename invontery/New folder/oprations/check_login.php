<?php  
session_start();
require 'conn.php';

extract($_POST);
$sql="CALL login_('$username','$password')";
$res=$conn->query($sql);
if($res){
	$row=$res->fetch_assoc();
	if(!$row['error']){
		foreach ($row as $key => $value) {
		 
		 $_SESSION[$key]=$value;
		 header("location:../home.php");


		}
	}else{
		$error=$row['error'];
		header("location:../index.php?error=$error");
	}
}


?>