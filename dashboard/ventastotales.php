<?php
    include("modulos/panel.php");
    include("modulos/clientes.php");
?>
 <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-9 main-chart">
            <!--CUSTOM CHART START -->
            <div class="border-head">
              <h3>Total de ventas de los productos por laboratorio</h3>
            </div>
            <div class="custom-bar-chart">
              <ul class="y-axis">
                <li><span>GLAXO</span></li>
                <li><span>NATTURA </span></li>
                <li><span>PISA </span></li>
                <li><span>LIMONT </span></li>
                <li><span>BAYER </span></li>
                <li><span>MEDICLEAN </span></li>
              </ul>
              <div class="bar">
                <div class="title">JAN</div>
                <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
              </div>
              <div class="bar ">
                <div class="title">FEB</div>
                <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
              </div>
              <div class="bar ">
                <div class="title">MAR</div>
                <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
              </div>
              <div class="bar ">
                <div class="title">APR</div>
                <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
              </div>
              <div class="bar">
                <div class="title">MAY</div>
                <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
              </div>
              <div class="bar ">
                <div class="title">JUN</div>
                <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top">62%</div>
              </div>
              <div class="bar">
                <div class="title">JUL</div>
                <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top">75%</div>
              </div>
            </div>
            <!--custom chart end-->
 
          </div>
          <!-- /col-lg-9 END SECTION MIDDLE -->
          <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
          <div class="col-lg-3 ds">
            <!--COMPLETED ACTIONS DONUTS CHART-->
            
            
            
            <!-- CALENDAR-->
            <div id="calendar" class="mb">
              <div class="panel green-panel no-margin">
                <div class="panel-body">
                  <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                    <div class="arrow"></div>
                    <h3 class="popover-title" style="disadding: none;"></h3>
                    <div id="date-popover-content" class="popover-content"></div>
                  </div>
                  <div id="my-calendar"></div>
                </div>
              </div>
            </div>
            <!-- / calendar -->
          </div>
          <!-- /col-lg-3 -->
          <div class="row mt">
        <!-- SERVER STATUS PANELS -->
        <div class="col-md-4 col-sm-4 mb">
            <div class="grey-panel pn donut-chart">
                <div class="grey-header">
                    <h5>VENTAS MENSUALES</h5>
                </div>
                <canvas id="serverstatus01" height="120" width="120"></canvas>
                <script>
                    var doughnutData = [{
                        value: 70,
                        color: "#FF6B6B"
                        },
                        {
                        value: 30,
                        color: "#fdfdfd"
                        }
                    ];
                    var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
                </script>
                <div class="row">
                    <div class="col-sm-6 col-xs-6 goleft">
                        <p>Compras <br/>Totales:</p>
                    </div>
                    <div class="col-sm-6 col-xs-6">
                        <h2><?php echo $estado; ?></h2>
                    </div>
                </div>
            </div>
        <!-- /grey-panel -->
        </div>
        <!-- /col-md-4-->
        <div class="col-md-4 col-sm-4 mb">
            <div class="darkblue-panel pn">
                <div class="darkblue-header">
                    <h5>Clientes por mes</h5>
                </div>
                <canvas id="serverstatus02" height="120" width="120"></canvas>
                <script>
                    var doughnutData = [{
                        value: 60,
                        color: "#1c9ca7"
                        },
                        {
                        value: 40,
                        color: "#f68275"
                        }
                    ];
                    var myDoughnut = new Chart(document.getElementById("serverstatus02").getContext("2d")).Doughnut(doughnutData);
                </script>
                
                <footer>
                
                    <h2><?php echo $codrol; ?></h2>
                </footer>
            </div>
        <!--  /darkblue panel -->
        </div>
        <!-- /col-md-4 -->
        <div class="col-md-4 col-sm-4 mb">
        <!-- REVENUE PANEL -->
        <div class="green-panel pn">
            <div class="green-header">
            <h5>Poducto mas y menos comprado</h5>
            </div>
            <div class="chart mt">
            <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
            </div>
            <p class="mt"><b>$ 17,980</b><br/>Month Income</p>
        </div>
        </div>
        <!-- /col-md-4 -->
    </div>
        </div>
        <!-- /row -->
      </section>
    </section>
    <!--main content end-->

            