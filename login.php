<!DOCTYPE html>
<html>
<head>
	<title>Login | Insumos Medicos Del Continente</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Sen&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<style type="text/css">
		form{
			max-width: 460px;
			width: calc(100%);
			padding: 9px;
			background: #1A2849;
			border-radius: 30px;
			margin: auto;
			margin-top: 150px;
		}
		form h3{
			margin: 5px 0;
			font-size: 29px;
		}
		form input{
			padding: 7px 10px;
			width: calc(100% - 22px);
			margin-bottom: 10px;
		}
		form button{
			padding: 10px 15px;
			width: calc(100%);
			background: var(--main-red);
			border: none;
			color: #fff;
		}
		form p{
			margin: 0;
			margin-bottom: 0px;
			color: var(--main-red);
			font-size: 30px;
			color: #fff;
			text-align: center;
		}
		.txtrh4{
			margin-top: 10px;
			color: #fff;
			text-align: center;
		}
	</style>
</head>
<body>
	<header class="bg_animate">
		<div class="header_nav">
			
			<div class="contenedor">
			<div class="banner_img"><a href="index.php"><img src="assets/logoi.jpg"></a></div>
				<h1>Insumos medicos del continente</h1>
				
				<nav class="nav">
					<div class="nav_container">
						<label for="menu" class="nav_label">
							<img src="assets/header/menu.png" width="35px" class="nav_img">
						</label>
						<input type="checkbox" id="menu" class="nav_input">
						<div class="nav_menu">
 							<a href="index.php" class="nav_item">Inicio</a>
							<a href="loginadmin.php" class="nav_item">¿Eres administrador?</a>
							
						</div>
					</div>
				</nav>
			</div>
		</div>

		<div class="main-content">
			<div class="content-page">
				<div>
					<section class="banner contenedor">
						<form action="servicios/login.php" method="POST">
							<secrion class="banner_title">
								<h2>Iniciar sesión</h2>
							</secrion>
							<input type="text" name="emausu" placeholder="Correo">
							<input type="password" name="pasusu" placeholder="Contraseña">
							<?php
								if (isset($_GET['e'])) {
									switch ($_GET['e']) {
										case '1':
											echo '<p>Error de conexión</p>';
											break;	
										case '2':
											echo '<p>Email inválido</p>';
											break;	
										case '3':
											echo '<p>Contraseña incorrecta</p>';
											break;							
										default:
											break;
									}
								}
							?>
							<button type="submit"><h3>Ingresar</h3></button>
							<div class="txtrh4"><h4>¿No tienes una cuenta?</h4></div>
							<a href="registro.php"><div class="txtregistro"><p>Registrate</p></div></a>
						</form>	
					</section>
				</div>
			</div>
		</div>

		<div class="burbujas">
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
			<div class="burbuja"></div>
		</div>
		<div class="menu-movil">
		<div class="item-option" onclick="mostrar_opciones()"><img src="assets/header/menu.png" width="50px"></div>
	</div>
	<script type="text/javascript">
		function mostrar_opciones(){
			if (document.getElementById("ctrl-menu").style.display=="none") {
				document.getElementById("ctrl-menu").style.display="block";
			}else{
				document.getElementById("ctrl-menu").style.display="none";
			}
		}
	</script>
	<div class="menu-opciones" id="ctrl-menu" style="display: none;">	
		<?php
		?>
		<ul>
			<li>
				<a href="login.php">
					<div class="menu-opcion">Inicio</div>
				</a>
			</li>
			<li>
				<a href="carrito.php">
					<div class="menu-opcion">Servicios</div>
				</a>
			</li>
			<li>
				<a href="carrito.php">
					<div class="menu-opcion">Contacto</div>
				</a>
			</li>
		</ul>
		<?php
		?>
	</div>
	</header>
</body>
</html>