<?php
$servername = "localhost";
$username = "VOTACION";
$password = "";
$database = "sistema_votacion";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = mysqli_query($conn, "SELECT ID_REGION, NOMBRE_REGION, NUMERO_REGION FROM REGION");
$data_reg = $sql->fetch_all(MYSQLI_ASSOC);

$sql2 = mysqli_query($conn, "SELECT NOMBRE_COMUNA, REGION_ID FROM COMUNA");
$data_com = $sql2->fetch_all(MYSQLI_ASSOC);

$sql3 = mysqli_query($conn, "SELECT * FROM CANDIDATO");
$data_can = $sql3->fetch_all(MYSQLI_ASSOC);

?>

<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
<div class="form">
    <form method="POST" action="form.php">
    	<table>
    		
    	
    	<tr>
    		<td><label for="nom_votante">Nombre y apellido</label></td>
    		<td><input type="text" id="nom_votante" name="nom_votante" required></td>
    	</tr>
    	<tr>
    		<td><label for="alias">Alias</label></td>
    		<td><input type="text" id="alias" name="alias" required></td>
    	</tr>
    	<tr>
    		<td><label for="rut">Rut</label></td>
    		<td><input type="text" id="rut" name="rut" required></td>
    	</tr>
    	<tr>
    		<td><label for="mail">Email</label></td>
    		<td><input type="email" id="mail" name="mail" required></td>
    	</tr>
    	<tr>
    		<td><label for="region">Region</label></td>
    		<td><select name="region" id="region">
  			<?php foreach ($data_reg as $row) {
  				echo('<option value="'.$row['ID_REGION'].'">'.$row['NUMERO_REGION'].' - '.$row['NOMBRE_REGION'].'</option>');}?>	   
    		</select></td>
    	</tr>
    	<script>
    		var e = document.getElementById("region");
    		var reg = {};
				function onChange() {
  			reg.value = e.value;
  			reg.nom = e.text;
  			$.ajax({
					url: "ajax.php",
					method: "post",
					data: reg,
					success: function(res){
						$("#comuna").html(res);
					}
				})
				}


				e.onchange = onChange;
				onChange();
    	</script>
    	<tr>
    		<td><label for="comuna">Comuna</label><p id="print_comunas"></p></td>
    		<td><select name="comuna" id="comuna">
  			</select></td>
    	</tr>
    	<tr>
    		<td><label for="candidato">Candidato</label></td>
    		<td><select name="candidato">
  			<?php foreach ($data_can as $row) {
  				echo('<option value="'.$row['NOMBRE_CANDIDATO'].' '.$row['APELLIDO_CANDIDATO'].'">'.$row['NOMBRE_CANDIDATO'].' '.$row['APELLIDO_CANDIDATO'].'</option>');}?>	   
    		</select></td>
    	</tr>
    	</table>
			<p>
				<td>Como se entero de nosotros</td>
				<div id="checkboxes">
				<td>Web<input type="checkbox" name="opcion[]" value="Web"></td>
				<td><label for="opcion2"> TV</label><input type="checkbox" name="opcion[]" value="TV"></td>
				<td>Redes Sociales<input type="checkbox" name="opcion[]" value="RedesSociales"></td>
				<td>Amigo<input type="checkbox" name="opcion[]" value="Amigo"></td>
				</div>
			</p>
			<p><input type="submit" value="votar"></p>
			<span></span>
			<script type="text/javascript" src="js/validation.js">
					
			</script>
		</form>



</body>
</html>