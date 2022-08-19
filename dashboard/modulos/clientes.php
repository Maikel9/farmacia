<?php
include('global/conexion.php');
echo "hello";
$sentenciaSQL=$pdo->prepare("SELECT count(*) FROM `usuario` WHERE codrol='2'");
$sentenciaSQL->execute();
$registro=$sentenciaSQL->fetch(PDO::FETCH_ASSOC);
$codrol=$registro['codrol'];
?>