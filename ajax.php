<?php
	$servername = "localhost";
	$username = "VOTACION";
	$password = "";
	$database = "sistema_votacion";

	$conn = mysqli_connect($servername, $username, $password, $database);

	if (!$conn) {
  		die("Connection failed: " . mysqli_connect_error());
	}

	$id = $_POST['value'];

	$sql2 = mysqli_query($conn, "SELECT NOMBRE_COMUNA, REGION_ID FROM COMUNA WHERE REGION_ID =".$id);
	$data_com = $sql2->fetch_all(MYSQLI_ASSOC);

	foreach ($data_com as $row) {
		echo ('<option value="'.$row['NOMBRE_COMUNA'].'">'.$row['NOMBRE_COMUNA'].'</option>');
	}
?>