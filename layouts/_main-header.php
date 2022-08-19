<header>
	<div class="logo-place"><a href="index.php"><img src="assets/logoi.jpg"></a></div>
	<div class="search-place">
		<input type="text" id="idbusqueda" placeholder="Encuenta lo que necesitas..." value="<?php if(isset($_GET['text'])){echo $_GET['text'];}else{echo '';} ?>">
		<button class="btn-main btn-search" onclick="search_producto()"><img src="assets/header/lupa.png" 	width="100%" ></button>
	</div>
	<div class="options-place">
		<?php
		if (isset($_SESSION['codusu'])) {
			echo
			'<div class="item-option" onclick="mostrar_opciones()"><p>'.$_SESSION['nomusu'].'<p></p></p><img src="assets/header/user.png" width="38px"></div>';
		}else{
		?>
		<div class="item-option" title="Ingresar">
			<a href="login.php"><img src="assets/header/login.png" width="38px"></i></a>
		</div>
		<?php
		}
		?>
		<div class="item-option" title="Mis compras">
			<a href="carrito.php"><img src="assets/header/carrito.png" width="38px"></i></a>
		</div>
	</div>
	<div class="menu-movil">
		<div class="item-option" onclick="mostrar_opciones()"><img src="assets/header/menu.png" width="38px"></div>
	</div>
</header>
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
	if (isset($_SESSION['codusu'])) {
	?>
	<ul>
		<li>
			<a href="carrito.php">
				<div class="menu-opcion">Carrito</div>
			</a>
		</li>
		
		<li>
			<a href="pedido.php">
				<div class="menu-opcion">Mis compras</div>
			</a>
		</li>
		<li>
			<a href="dashboard/dashboard.php">
				<div class="menu-opcion">Dashboard</div>
			</a>
		</li>
		<li>
			<a href="_logout.php">
				<div class="menu-opcion">Salir</div>
			</a>
		</li>
	</ul>
	<?php
	}else{
	?>
	<ul>
		<li>
			<a href="login.php">
				<div class="menu-opcion">Iniciar sessión</div>
			</a>
		</li>
		<li>
			<a href="carrito.php">
				<div class="menu-opcion">Carrito</div>
			</a>
		</li>
	</ul>
	<?php
	}
	?>
	
</div>