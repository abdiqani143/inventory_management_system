<?php
session_start();
require 'conn.php';
$username=$_POST["username"];
$password=$_POST['password'];
$sql="CALL login_pro('$username','$password')";
$res=$conn->query($sql);

 $row=$res->fetch_assoc();

if (!$row['error']) {
	foreach ($row as $key => $value) {
		$_SESSION[$key]=$value;
		setcookie($key, $value, time() + (86400 * 30), "/");
	}
header("Location: ../index.php");

}
else{
	$error=$row['error'];
	header("Location: ../login.php?error=$error");
}
?>