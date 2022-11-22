<?php

$conn=new mysqli("localhost","root","","inventory_management");
if(!$conn){
	 echo $conn->error;
}else{
	// echo "success";
}


?>