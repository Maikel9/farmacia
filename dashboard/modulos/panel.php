<?php
include('global/conexion.php');
echo "hello";
$sentenciaSQL=$pdo->prepare("SELECT count(*) estado FROM `pedido`");
$sentenciaSQL->execute();
$registro=$sentenciaSQL->fetch(PDO::FETCH_ASSOC);
$estado=$registro['estado'];
?>