<?php
//1: Error de conexion
//2: Email invalido
//3: Contraseña incorrecta
include('_conexion.php');
$nomusu=$_POST['nameusur'];
$apeusu=$_POST['apeusur'];
$emausu=$_POST['emausur'];
$sql="SELECT * FROM USUARIO WHERE emausu='$emausu'";
$result=mysqli_query($con,$sql);
if ($result) {
	$row=mysqli_fetch_array($result);
	$count=mysqli_num_rows($result);
	if ($count==0) {
		//Puede crear un nuevo usuario
		$pasusu=$_POST['pasusur'];
		$pasusu2=$_POST['pasusu2r'];
		if ($pasusu!=$pasusu2) {
			header('Location: ../dashboard/registro.php?er=3');
		}else{
			if(strpos($emausu, "@") === false){
				header('Location: ../dashboard/registro.php?er=4');
			}else{
				$sql="INSERT into usuario (codusu,nomusu,apeusu,emausu,pasusu,estado,codrol)
				VALUES ('','$nomusu','$apeusu','$emausu','$pasusu',1,1)";
				$result=mysqli_query($con,$sql);
				$codusu=mysqli_insert_id($con);
				$_SESSION['nomusu']=$nomusu;
				$_SESSION['apeusu']=$apeusu;
				$_SESSION['codusu']=$codusu;
				$_SESSION['emausu']=$emausu;
				header('Location: ../dashboard/user.php');
			}
			
		}
	}else{
		header('Location: ../dashboard/registro.php?er=2');
	}
}else{
	header('Location: ../dashboard/registro.php?er=1');
}