<?php

$conn=new mysqli("localhost","root","","inventory");
if(!$conn){
	 echo $conn->error;
}else{
	// echo "success";
}


?>