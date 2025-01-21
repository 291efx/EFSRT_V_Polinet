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
            <p>Si tienes comentarios, consultas o sugerencias, no dudes en ponerte en contacto con nosotros.</p>
            <p>Estamos aquí para ayudarte en lo que necesites.</p>
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
	<main class="mai0">
        <div class="conte0">
            <div class="conter1">
                <div class="conter2">
                    <div class="conta-cabe">
                        <h3>Formulario de Contacto</h3>
                    </div>
                        <div class="conte-cuer">
                            <form>
                                <div class="conte-div grid-g">
                                    <div class="col-md-6">
                                        <label for="Local">Local</label>
                                        <select required="required" class="form-control">
                                            <option disabled="disabled" selected="selected">Seleccionar Local</option>
                                            <option value="#" >Callao</option>
                                            <option value="#" >Lima</option>
                                            <option value="#" >Arequipa</option>
                                            <option value="#" >Trujillo</option>
                                            <option value="#" >Ica</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Nombre Completo">Nombre Completo</label>
                                        <input type="text" required="required" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="Celular">Celular</label>
                                        <input type="text" required="required" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="E-mail">E-mail</label>
                                        <input type="email" required="required" class="form-control">
                                    </div>
                                </div>
                                <div class="conte-div">
                                    <div class="col-md-12">
                                        <label for="Mensaje">Mensaje</label>
                                        <textarea cols="30" rows="10" required="required" class="form-control"></textarea>
                                    </div>
                                    <div class="col-md-4">
                                        <button type="submit" class="btn btn-primary">Enviar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    
                </div>
            </div>
            <div>
                <h2 class="h-index">
                    UBICANOS EN:
                </h2>
            </div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d975.3476407286948!2d-77.04727327076982!3d-12.085392888083648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8f86ed75c75%3A0xdf81bcb3fecb3c0a!2sAv.%20C%C3%A9sar%20Canevaro%201447%2C%20Lince%2015073!5e0!3m2!1ses-419!2spe!4v1649565236302!5m2!1ses-419!2spe"  allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="maps-form"></iframe>
        </div>
        
    </main>
	
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
