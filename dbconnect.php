<?php 
define('DB_HOST', 'localhost'); 
define('DB_NAME', 'id18282910_bookstore'); 
define('DB_USER','id18282910_webb'); 
define('DB_PASSWORD',']G|v>g~IC_4bEk08'); 

$con=mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysql_error()); 
$db=mysqli_select_db($con,DB_NAME) or die("Failed to connect to MySQL: " . mysql_error()); 
?>