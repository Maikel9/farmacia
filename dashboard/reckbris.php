<?php
session_start();

if(!isset($_SESSION['codusu'])){
  header("Location: ../loginadmin.php");
}

if(isset($_SESSION['codrol']) !=1){
  header("Location: ../loginadmin.php");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Reckbris/ Insumos medicos</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="../index.php" class="logo"><b>INSU<span>MOS</span></b></a>
      <!--logo end-->
      
      <div class="top-menu">
      <ul class="nav pull-right top-menu">
          <li><a class="logout" onclick="mostrar_opciones()" href="#">Opciones</a></li>

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
                <a href="user.php">
                  <div class="menu-opcion">Usuarios</div>
                </a>
              </li>
              <li>
                <a href="../_logout.php">
                  <div class="menu-opcion">Salir</div>
                </a>
              </li>
            </ul>
            <?php
            }else{
            ?>
            <ul>
              <li>
                <a href="../loginadmin.php">
                  <div class="menu-opcion">Iniciar sessión</div>
                </a>
              </li>
            </ul>
            <?php
            }
            ?>
            
          </div>



        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.php"><img src="img/pain.png" class="img-circle" width="80"></a></p>
          <h5 class="centered">
          <?php
        if (isset($_SESSION['codusu'])) {
          echo
          '<div class="item-option" onclick="mostrar_opciones()"><p>'.$_SESSION['nomusu'].'<p></p></div>';
        }
        ?></h5>
          <li class="mt">
            <a class="active" href="dashboard.php">
              <i class="">
              <img src="img/dashboard.png" class="img-circle" width="40">
              </i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="">
              <img src="img/caja.png" class="img-circle" width="40">
              </i>
              <span>Laboratorio</span>
              </a>
            <ul class="sub">
              <li><a href="glaxo.php">Glaxo</a></li>
              <li><a href="#">Reckbris</a></li>
              <li><a href="nattura.php">Nattura</a></li>
              <li><a href="silanes.php">Silanes</a></li>
              <li><a href="sophia.php">Sophia</a></li>
              <li><a href="sanfer.php">Sanfer</a></li>
              <li><a href="ucb.php">Ucb</a></li>
              <li><a href="grossman.php">Grossman</a></li>
              <li><a href="bayer.php">Bayer</a></li>
              <li><a href="todos.php">Todos</a></li>
            </ul>
          </li>
        </ul>  
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Productos</h3>
        <div class="row">
          <div class="col-md-12">
            <div class="content-panel">
              <h4><i class="fa fa-angle-right"></i> Reckbris</h4>
              <hr>
              <table class="table">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                    <th>Precio</th>
                    <th>Laboratorio</th>
                    <th>Caducidad</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    include('../servicios/_conexion.php');
                    ?>

                    <?php
                    $sql="SELECT * FROM producto WHERE laboratorio = 'RECKBRIS'";
                    $result=mysqli_query($con,$sql);

                    while($mostrar=mysqli_fetch_array($result)){
                    ?>

                    <tr>
                        <td><?php echo $mostrar['codpro']; ?></td>
                        <td><?php echo $mostrar['nompro']; ?></td>
                        <td><?php echo $mostrar['despro']; ?></td>
                        <td><?php echo $mostrar['prepro']; ?></td>
                        <td><?php echo $mostrar['laboratorio']; ?></td>
                        <td><?php echo $mostrar['caducidad']; ?></td>
                    </tr>

                    <?php
                    }
                    ?>
                    
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
          
          <!-- /col-md-12 -->
        </div>
        <!-- row -->
        
        <!-- /row -->
      </section>
    </section>

    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Derechos reservador 2022 <strong>Insumos Medicos Del Continente</strong>
        </p>
       
        <a href="" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>

  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <div id="ascrail2000" class="nicescroll-rails" style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; left: 207px; height: 635px; opacity: 0; display: block;"><div style="position: relative; top: 0px; float: right; width: 3px; height: 553px; background-color: rgb(78, 205, 196); background-clip: padding-box; border-radius: 10px;"></div></div>
  
  <script src="lib/common-scripts.js"></script>
  
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
   <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Bienvenido invocador!',
        // (string | mandatory) the text inside the notification
        text: 'Pase el cursor sobre mí para habilitar el botón Cerrar. Puede ocultar la barra lateral izquierda haciendo clic en el botón junto al logotipo.',
        // (string | optional) the image to display on the left
        image: 'img/pain.png',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script>
</body>

</html>