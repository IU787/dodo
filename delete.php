<?php  
	$connect = mysqli_connect("127.0.0.1", "root", "", "dodo");
	$text = "DELETE FROM korzina WHERE id = '".$_GET['id']."' ";
	$zapros_vstavit = mysqli_query($connect, $text);
	header('Location: index.php');
	exit();
?>