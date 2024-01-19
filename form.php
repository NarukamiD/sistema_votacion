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
		$username = "VOTACION";
		$password = "";
		$database = "sistema_votacion";

		$conn2 = mysqli_connect($servername, $username, $password, $database);

		if (!$conn2) {
  		die("Connection failed: " . mysqli_connect_error());
		}
		 
		$sql4 = mysqli_query($conn2,"SELECT NOMBRE_REGION FROM REGION WHERE ID_REGION = ".$region);
		$data_nom_reg = $sql4->fetch_all(MYSQLI_ASSOC);
		foreach ($data_nom_reg as $row) {
		$nom_region = $row['NOMBRE_REGION'];
		}

		
		$sql_forma = "INSERT INTO VOTO VALUES ('$nom_votante','$alias','$rut','$mail','$nom_region','$comuna','$candidato','$opc')";
		$rs = mysqli_query($conn2, $sql_forma);
		
		echo("Usted ".$nom_votante." con rut ".$rut." ha votado por ".$candidato);
		echo("Con el alias ".$alias." cuyo mail asociado es ".$mail);
		echo("En la comuna ".$comuna." de la ".$nom_region);
		mysqli_close($conn2);
?>