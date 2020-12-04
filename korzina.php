<?php 		
	$con = mysqli_connect('127.0.0.1', 'root', '', 'dodo');
	$query = mysqli_query($con, "SELECT * FROM menu WHERE id = '" . $_GET['id']. "' ");
	$res = $query->fetch_assoc();
	$text_zaprosa = "INSERT INTO korzina (img, name, price) 
					VALUES ('" . $res['img'] . "','" . $res['name']. "', '" . $res['price']. "')";
	$query_zapros = mysqli_query($con, $text_zaprosa);
	header('Location: index.php');
	exit();
?>