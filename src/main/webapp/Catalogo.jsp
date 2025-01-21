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
            <img src="imgs/imagenes/Logo.PNG" alt="Logo" class="logo-img">
            <h2 class="mt-3">Polinet S.A.C</h2>
        </div>
        <div class="mt-4 text-center">
            <p>Explora nuestro catalogo de productos y encuentra lo que necesitas.</p>
            <p>Estamos comprometidos en ofrecerte la mejor seleccion de productos de alta calidad.</p>
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
		 
		<div class=centrada> 

 <div class="col-11">
                <div class="col-md-3">
                    <div class="conte3">
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C1.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">ESTABILIZADOR GAMBYTE 4 TOMAS ( GI - GP1000 - 4P )</a>
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
                                        011588
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$19.00 - S/71.82</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C2.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">EXTABILIZADOR GAMBYTE 8 TOMAS ( GI - GP1200 - 8P )</a>
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
                                        011589
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
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
                                    <img src="imgs/imagenes/ImagenesCatalogo/C3.webp" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">PAD MOUSE GAMBYTE BLAZE PRO GAMING ( GI - BLAZE )</a>
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
                                        008870
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$12.00 - S/45.36</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C4.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">PAD MOUSE GAMBYTE BLAZE PRO GAMING ( GI - BLAZE )</a>
                                </h4>
                                <div class="d-f">
                                    <form class="estre">
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
                                        007390
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
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
                                    <img src="imgs/imagenes/ImagenesCatalogo/C5.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">CASE GAMBYTE CYCLOP ( CL3303 ) C/ FUENTE 600W</a>
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
                                        012455
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$91.00 - S/343.98</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C6.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE ARGON ( GI - ARGON - MR ) GAMING</a>
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
                                        012939
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$38.00 - S/143.64</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C7.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">CASE GAMBYTE RAZON ( CL7405 ) C/ FUENTE 600W</a>
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
                                        012456
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$92.00 - S/347.76</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C8.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">FUENTE GAMBYTE ( GI - GN600 - R VER2.0 ) NEGRO</a>
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
                                        0.11587
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$34.00 - S/128.52</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C9.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE SOUL ( GI - SOUL - KT ) GAMING </a>
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
                                        013032
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$46.00 - S/173.88</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C10.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE BLUE G PRO ( GI - BLUEG - KT )</a>
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
                                        013033
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$47.00 - S/177.66</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C11.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE BLOOD LORD GREY ( BMBH357AH )</a>
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
                                        012980
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$46.00 - S/173.88</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C12.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE KROUX (GI - KROUX - KT ) GAMING</a>
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
                                        013034
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$47.00 - S/177.66</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C13.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AUTICULAR GAMBYTE TRITON G - V2 ( GI - TRITONGV2 )</a>
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
                                        012935
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$28.00 - S/105.84</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C14.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE FIRE DEATH ( BMBH414AR ) GAMING</a>
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
                                        012975
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$35.00 - S/132.30</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C15.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE BLOOD LORD BLACK ( BMBH35QA )</a>
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
                                        012979
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$48.00 - S/181.44</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C16.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE DIVINE PRO (GI - CIVINE - KT)</a>
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
                                        013035
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$47.00 - S/177.66</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C17.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">CASE GAMBYTE ZEKTOR ( ZEKTOR ) 650W | NEGRO |</a>
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
                                        012550
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$104.00 - S/393.12</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C18.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE FROST DEATH ( BMBH414AD ) GAMING</a>
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
                                        012974
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$35.00 - S/132.30</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C19.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">AURICULAR GAMBYTE TEMPLAR BLUE ( BMBH439AD )</a>
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
                                        012977
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
                                    </p>
                                </div>
                                <div class="d-btn">
                                    <button type="submit" class="btn btn-primary">$43.00 - S/132.54</button>
                                </div>
                            </div>
                        </div>
                        <div class="conte4">
                            <div class="d-i">
                                <a href="" class="a-img-o">
                                    <img src="imgs/imagenes/ImagenesCatalogo/C20.jpg" alt="" class="img-o">
                                </a>
                            </div>
                            <div class="c-d-pro">
                                <h4 class="txt-h4">
                                    <a href="#" class="h-a">CASE GAMBYTE FURIUS ( FURIUS ) 650W | NEGRO |</a>
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
                                        012549
                                    </p>
                                    <p class="txt-cs">
                                        <b class="b-o">STOCK</b>
                                        +10
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
