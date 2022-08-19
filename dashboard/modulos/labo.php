<?php
include('global/conexion.php');
echo "hello";
$sentenciaSQL=$pdo->prepare("SELECT * FROM `producto` WHERE laboratorio='GLAXO'");
$sentenciaSQL->execute();
$registro=$sentenciaSQL->fetch(PDO::FETCH_ASSOC);
$labo=$registro['producto'];
?>