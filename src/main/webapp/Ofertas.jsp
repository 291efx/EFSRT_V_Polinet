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
            <img src="imgs/imagenes/Logo.PNG" alt="Ofertas" class="logo-img">
            <h2 class="mt-3">Ofertas</h2>
        </div>
        <div class="mt-4 text-center">
            <p>Aprovecha nuestras increibles ofertas y descuentos en una variedad de productos.</p>
            <p>Encuentra lo que necesitas a precios mas bajos y no te pierdas nuestras promociones exclusivas.</p>
        </div>
    </div>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="LoginRegistro.jsp">¿Eres nuevo aquí? Regístrate</a>

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
                                <img src="imgs/imagenes/ImagenesOfertas/O1.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MOUSE GENIUS SCORPION SPEOR(31040002400)</a>
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
                                    010224
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$24.00 - S/91.08</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O2.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">CASE AVATEC CERTIFICADO ( CCA-5001B) 550W </a>
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
                                    012528
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$65.00 - S/245.70</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O3.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">COOLER PROC. AORUS ATC800 (GP-ATC800) SOCKET</a>
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
                                    013552
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$128.00 - S/483.84</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O4.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">CARTUCHO HP 664 (F6V28AL) TRICOLOR - 1115</a>
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
                                    004337
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$17.50 - S/66.15</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O5.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">HHD SEAGATE 1TB (ST1000VX005 AZUL | 64MB |)</a>
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
                                    005617
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$49.00 - S/185.22</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O6.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">HDD EXTERNO ADATA 1TB HD330 AHD330 - 1TU31 - CB</a>
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
                                    008945
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$56.00 - S/211.68</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O7.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">PAD MOUSE RAZER GOLIATHUS SPEED (RZ02 - 029302)</a>
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
                                    010481
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$36.00 - S/136.08</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O8.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">ANTIVIRUS ESET SMART SEGURITY PREMIUM (S1103)</a>
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
                                    011249
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$69.00 - S/260.82</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O9.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">CASE AVATEC CERTIFICADO (CCA - 5004B )550W </a>
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
                                    012529
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$66.00 - S/249.48</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O10.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">ANTIVIRUS ESET HOME OFFICE SECURITY ( S110301 )</a>
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
                                    011250
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$287.00 - S/1084.86</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O11.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">PC MINI INTEL NUC 9 PRO KIT ( BKNUC9VXQNX1 )</a>
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
                                    012018
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$1796.00 - S/6788.88</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O12.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MOUSE INALAMBRICO LOGITECH M280 ( 910 - 004361 )</a>
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
                                    009971
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$21.00 - S/79.38</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O13.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">PC MINI INTEL NUC 9 PRO ( BKNUC9V7QNX1 ) I7 - 9900K</a>
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
                                    012019
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$1439.00 - S/5439.42</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O14.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">PC MINI ASROCK BUC BOX 1135G7/US/AI ( 90PXG7V )</a>
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
                                    012787
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$578.00 - S/2184.84</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O15.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">HDD SEAGATE 500GB ( ST3500312CS ) PIPELINE </a>
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
                                    002036
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$24.00 - S/90.72</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O16.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MODULO CAPTURADORA DE VIDEO HDMI EVGA XR1 CAPTURADORA</a>
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
                                    012020
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$196.00 - S/740.88</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O17.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">CAMARA DE VIGILANCIA IP MINI INALAMBRICO D-LI</a>
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
                                    009974
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$45.50 - S/171.99</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O18.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">PROC. INTEL CORE I5 9500 ( BX80684159500 )</a>
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
                                    013558
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$199.00 - S/752.22</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O19.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">CASE ASUS TUF GAMING GT501 ( 90DC0012 - B40000 )</a>
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
                                    013303
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$213.00 - S/805.14</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O20.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MOUSE MINI KLIP ( KMO-103 ) RETRACTIL</a>
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
                                    001016
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$11.00 - S/41.58</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O21.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MOUSE VSG AQUILAR AIR BLANCO MATE ( VG-M550 )</a>
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
                                    013800
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$42.00 - S/158.76</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O22.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MOUSE INALAMBRICO MICROSOFT 3500 ( GMF - 00045 )</a>
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
                                    010473
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$25.00 - S/94.50</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O23.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">SSD EXTERNO SANDISK 480GB ( SDSSDE30-480G-G25 )</a>
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
                                    013545
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$84.00 - S/317.52</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O24.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">TECLADO VSG ALNILAM BLACK KAILH BLUE ( VG-KM9 )</a>
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
                                    013802
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
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
                                <img src="imgs/imagenes/ImagenesOfertas/O25.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MOUSE INALAMBRICO MICROSOFT SOURIS MOBILE</a>
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
                                    010475
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$30.00 - S/113.40</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O26.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MOUSE MICROSOFT BASIC ( 4YH - 00005 ) NEGRO</a>
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
                                    012011
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$11.00 - S/41.58</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O27.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">SSD EXTERNO SEAGATE EXPANSION 500GB ( STJD500 )</a>
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
                                    012013
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$90.00 - S/340.20</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O28.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">MICROFONO RAZER SEIREN X ( RZ19 - 02290300 - R3M1 )</a>
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
                                    009966
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$93.00 - S/351.54</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O29.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">PAD MPUSE RAZER GIGANTUS ( RZ02 - 01830200 - R3U1)</a>
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
                                    009967
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$32.00 - S/120.96</button>
                            </div>
                        </div>
                    </div>
                    <div class="conte4">
                        <div class="d-i">
                            <a href="" class="a-img-o">
                                <img src="imgs/imagenes/ImagenesOfertas/O30.jpg" alt="" class="img-o">
                            </a>
                        </div>
                        <div class="c-d-pro">
                            <h4 class="txt-h4">
                                <a href="#" class="h-a">ADAPTADOR DE MINI DP A HDMI UGREEN ( 69573038 )</a>
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
                                    011759
                                </p>
                                <p class="txt-cs">
                                    <b class="b-o">STOCK</b>
                                    1
                                </p>
                            </div>
                            <div class="d-btn">
                                <button type="submit" class="btn btn-primary">$11.00 - S/41.58</button>
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