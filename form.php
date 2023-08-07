<?php 
	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		$nom_votante = $_POST['nom_votante'];
		$alias = $_POST['alias'];
		$rut = $_POST['rut'];
		$mail = $_POST['mail'];
		$region = $_POST['region'];
		$comuna = $_POST['comuna'];
		$candidato = $_POST['candidato'];
		$opcion1 = $_POST['opcion'];
		$opc = "";
		foreach ($opcion1 as $opc1) {
			$opc .= $opc1." , ";
		}
	}

		$servername = "localhost";
		$username = "root";
		$password = "";
		$database = "sistema_votacion";

		$conn2 = mysqli_connect($servername, $username, $password, $database);

		if (!$conn2) {
  		die("Connection failed: " . mysqli_connect_error());
		}
		
		$sql_forma = "INSERT INTO VOTO VALUES ('$nom_votante','$alias','$rut','$mail','$region','$comuna','$candidato','$opc')";
		$rs = mysqli_query($conn2, $sql_forma);
		

		mysqli_close($conn2);
?>