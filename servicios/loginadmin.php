<?php
//1: Error de conexion
//2: Email invalido
//3: Contraseña incorrecta
include('_conexion.php');
$emausu=$_POST['emausu'];
$codrol=$_POST['codrol'];
$sql="SELECT * FROM USUARIO WHERE emausu='$emausu' and codrol=1";
$result=mysqli_query($con,$sql);
if ($result) {
	$row=mysqli_fetch_array($result);
	$count=mysqli_num_rows($result);
	if ($count!=0) {
		$pasusu=$_POST['pasusu'];
		if ($row['pasusu']!=$pasusu) {
			header('Location: ../loginadmin.php?e=3');
		}else{
			session_start();
            $_SESSION['codusu']=$row['codusu'];
			$_SESSION['emausu']=$row['emausu'];
			$_SESSION['nomusu']=$row['nomusu'];
            $_SESSION['codrol']=$row['codrol'];
            header('Location: ../dashboard/dashboard.php');
            
		}
	}else{
		header('Location: ../loginadmin.php?e=2');
	}
}else{
	header('Location: ../loginadmin.php?e=1');
}