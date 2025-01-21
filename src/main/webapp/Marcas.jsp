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
            <img src="imgs/imagenes/Logo.PNG" alt="Marcas" class="logo-img">
            <h2 class="mt-3">Marcas</h2>
        </div>
        <div class="mt-4 text-center">
            <p>Descubre una amplia variedad de productos de las mejores marcas en el mercado.</p>
            <p>Explora nuestra selección y elige los productos que mejor se adapten a tus necesidades.</p>
        </div>
    </div>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="LoginRegistro.jsp">¿Nuevo aquí? Regístrate</a>

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
            <div class="di-cen">
                <div class="cue-mar2">
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="" >
                                <img src="imgs/imagenes/ImagenesMarcas/M1.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M2.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M3.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M4.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M5.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M6.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M7.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M8.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M9.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M10.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M11.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M12.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M13.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M14.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M15.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M16.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M17.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M18.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M19.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M20.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M21.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M22.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2"> 
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M23.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M24.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M25.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M26.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M27.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M28.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M29.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M30.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M31.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M32.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M33.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M34.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M35.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M36.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M37.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M38.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M39.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M40.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M41.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M42.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M43.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M44.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M45.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M46.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M47.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M48.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M49.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M50.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M51.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M52.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M53.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M54.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M55.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M56.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M57.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M58.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M59.jpg" alt="" class="img-mar">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="mar">
                            <a href="">
                                <img src="imgs/imagenes/ImagenesMarcas/M60.jpg" alt="" class="img-mar">
                            </a>
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