<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<script src="https://kit.fontawesome.com/a9365d9272.js"></script>
<link rel="icon" type="image/jpg" href="imgs/imagenes/IconLogo.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/StyloPri.css">
<title>Importaciones  S.A.C</title>
</head>
<body>


<div class="container-fluid">
  <div class="box">
    <div class="logoCabezera">
      <a href="Inicio.html"><img src="imgs/imagenes/Logo3.png" alt="Logo"></a>
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
      <img src="imgs/imagenes/ImagenesIndex/Iconos/I7.png" class="iconoLogin" alt="Login" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLogin" aria-controls="offcanvasLogin" aria-label="Toggle login offcanvas">
      <img src="imgs/imagenes/ImagenesIndex/Iconos/I5.png" class="iconoCarrito" alt="carrito" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCarrito" aria-controls="offcanvasCarrito" aria-label="Toggle carrito offcanvas">
    </div>
  </div>
</div>

<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasLogin" aria-labelledby="offcanvasLoginLabel">
  <div class="offcanvas-header">
        <h5 class="offcanvas-title">Bienvenido:</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
  <div class="offcanvas-body">
        <div class="text-center">
            <img src="imgs/imagenes/Logo.PNG" alt="Zona Gamer" class="logo-img">
            <h2 class="mt-3">Zona Gamer</h2>
        </div>
        <div class="mt-4 text-center">
            <p>¡Preparate para sumergirte en emocionantes aventuras y desafios en la Zona Gamer!</p>
            <p>Explora nuestros juegos y disfruta de un mundo lleno de entretenimiento.</p>
        </div>
    </div>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="LoginRegistro.jsp">¿Eres nuevo aqui? Registrate</a>

  </div>

<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasCarrito" aria-labelledby="offcanvasCarritoLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasCarritoLabel">Carrito</h5>
    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasCarrito" aria-labelledby="offcanvasCarritoLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasCarritoLabel">Carrito</h5>
    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <h6>Productos en el carrito:</h6>
    <ul class="list-group">
      <?php
      // Conexión a la base de datos (cambia los detalles según tu configuración)
      $conexion = mysqli_connect("localhost", "usuario", "contraseña", "basededatos");

      // Consulta SQL para obtener los productos
      $consulta = "SELECT nombre FROM productos";
      $resultado = mysqli_query($conexion, $consulta);

      // Recorremos los resultados y mostramos los productos
      while ($fila = mysqli_fetch_assoc($resultado)) {
        echo '<li class="list-group-item">' . $fila['nombre'] . '</li>';
      }

      // Cerrar la conexión
      mysqli_close($conexion);
      ?>
    </ul>
    <div class="text-end mt-3">
      <button class="btn btn-primary">Ir al carrito</button>
    </div>
  </div>
</div>
  </div>
</div>






     
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
        <div class="dropdown">
  			<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
   				 Todas las Categorias
  		</button>
  		<ul class="dropdown-menu">
    		<li><a class="dropdown-item" href="#">Action</a></li>
   			<li><a class="dropdown-item" href="#">Another action</a></li>
    		<li><a class="dropdown-item" href="#">Something else here</a></li>
  		</ul>
		</div>
        </li>
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Inicio.jsp">Inicio</a></li>
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Catalogo.jsp">Catalogo</a></li>
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Ofertas.jsp">Ofertas</a></li>
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Marcas.jsp">Marcas</a></li>
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Gamers.jsp">Gamer</a></li>
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Contactanos.jsp">Contactanos</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="i-cuerpo">
	<section class="pu">
		<div class="centrada">
           <div class="col-11">
                <div class="col-md-3">
                    <div class="conte3">
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G1.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">SISTEMA DE ENFRIAMIENTO LIQUIDO GAMBYTE HYDRO</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        012903
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$78.00 - S/294.84</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G2.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">MEM.RAM GEIL ORIN DDR4 8GB / 3200 ( GAOSG48GB )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013429
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$58.00 - S/219.24</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G3.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">SISTEMA DE ENFRIAMIENTO LIQUIDO GAMBYTE HYDRO</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        012090
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$132.00 - S/498.96</button>
                                </div>
                            </div>
                        </div>
    
    
                    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G4.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">CASE GAMBYTE ULTRALISK RED ( GI - ULTRALISKRED)</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013092
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$287.00 - S/1 084.86</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G5.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">SSDM.2 SOLIDO SAMSUNG 250GB ( MZ - V8P250B/AM )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        011932
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$79.00 - S/298.62</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G6.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">MB ASUS ROG STRIX Z590 - E GAMING WIFI ( ROG ST)</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        012808
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$427.00 - S/1 614.06</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G7.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">PROC. INTEL CORE I7 12700K ( BX8071512700K )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013329
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$509.00 - S/1 924.02</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G8.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">PRO. AMD RYZEN 9 5900X ( 100 - 100000061WOF )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        011880
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$639.00 - S/2 415.42</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G9.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">MEM. RAM APACER NOX DDR4 8GB / 3200 ( AH4U08G32 )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013608
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$58.00 - S/219.24</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G10.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">PROC. INTEL CORE I5 12600K ( BX8071512600K )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013326
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$365.00 - S/1 379.70</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G11.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">MONITOR VIEWSONIC 24" ( XG2405 ) GAMING | IPS 1MS</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        012830
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$200.00 - S/756.00</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G12.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">MEM. RAM ZADAK SPARK DDR4 8GB / 3200 ( ZD4-SPR3 )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013619
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$58.00 - S/219.24</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G13.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">PROC. INTEL CORE I7 12700KF ( BX8071512700KF )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013529
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$495.00 - S/1 871.10</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G14.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">MEM. RAM ZADAK MOAB DDR4 16 GB ( 2 X 8 ) / 3200 ( ZD4-SPR3 )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013469
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$89.00 - S/336.42</button>
                                </div>
                            </div>
                        </div>
                        
    
    
                        <div class="conte4">
                            <div class="d-i">
                               <a href="" class="a-img-o">
                                   <img src="imgs/imagenes/ImagenesGamer/G15.jpg" alt="" class="img-o">
                               </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">SISTEMA DE ENFRIAMIENTO LIQUIDO MSI MPG COREL</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013581
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$273.00 - S/1 031.94</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G16.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">FUENTE THERMALTAKE SMART BX1 RGB ( PS - SPR - 075 )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        009240
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$99.00 - S/374.22</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G17.webp" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">SSD M.2 SOLIDO ADATA 256GB XPG SEPECTRIX S40G</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        012706
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$60.00 - S/226.80</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G18.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">PROC. AMD RYZEN 7 3800XT ( 100 - 100000279WOF )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        011446
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$444.00 - S/1 678.32</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G19.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">SISTEMA DE ENFRIAMIENTO LIQUIDO THERMALTAKE </a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        012253
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$170.00 - S/642.00</button>
                                </div>
                            </div>
                        </div>
    
    
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesGamer/G20.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">SISTEMA DE ENFRIAMIENTO LIQUIDO MSI MPG COREL</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
                     <p class="clasi">
                         <input id="radio1" type="radio" name="estrellas" value="5">
                         <label for="radio1" class="r">O</label>
                         <input id="radio2" type="radio" name="estrellas" value="4">
                         <label for="radio2" class="r">O</label>
                         <input id="radio3" type="radio" name="estrellas" value="3">
                         <label for="radio3" class="r">O</label>
                         <input id="radio4" type="radio" name="estrellas" value="2">
                         <label for="radio4" class="r">O</label>
                         <input id="radio5" type="radio" name="estrellas" value="1">
                         <label for="radio5" class="r">O</label>
                       </p>
                 </form>
                                </div>
                                <div class="c-s">
                                    <p class="txt-cs">
                                        <b class="b-o">MINICÓDIGO</b>
                                        013580
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$369.00 - S/1 394.82</button>
                                </div>
                            </div>
                        </div>
    
                        
                    </div>
                </div>
           </div>
        </div>
</section>
	
</div>
<div class="i-cuerpo">
	<div class="row row-cols-1 row-cols-md-4 g-2">
  <div class="col">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">ACERCA DE NOSOTROS</h5>
        <ul class="">
          <li>Soporte Técnico</li>
          <li>Trabaja con Nosotros</li>
          <li>Formulario de Contacto</li>
          <li>Nuestros Locales</li>
          <li>Sobre Nosotros</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">ACERCA DE NOSOTROS</h5>
        <ul class=l">
          <li>Soporte Técnico</li>
          <li>Trabaja con Nosotros</li>
          <li>Formulario de Contacto</li>
          <li>Nuestros Locales</li>
          <li>Sobre Nosotros</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">UBICANOS</h5>
        <ul class="">
           <li>Av. Canevaro 1447 Lince</li>
           <li>Central (01) 425 - 1185</li>
           <li>Está página permite pagos online</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">CONTACTANOS</h5>
        <ul class="">
          <li>ventasweb@polinet.com.pe</li>
          <li>ventas.corp@polinet.com.pe</li>
          <li>ventas@polineto.com.pe</li>
          <li>online@polineto.com.pe</li>
          <li>Chatea con Nosotros</li>
         </ul>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>