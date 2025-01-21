<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entidades.Usuario" %>
    
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<script src="https://kit.fontawesome.com/a9365d9272.js"></script>
<link rel="icon" type="image/jpg" href="imgs/imagenes/IconLogo.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            <p>¡Bienvenido a Polinet! Gracias por visitarnos.</p>
            <p>Esperamos que disfrutes de nuestros servicios y contenido.</p>
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
		<div class="conte3">
		
<!-- Ventana de producto 1 -->
<div class="product-window-custom">
    <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP1.jpg" alt="Producto" class="img-o">
    <h2 class="product-title">TARJ. VIDEO MSI GEFORGE GT 730 2GB DDR3 V3</h2>
    <div class="product-details-custom">
        <p><strong>MINICÓDIGO:</strong> 014462</p>
        <p><strong>STOCK:</strong> +10</p>
        <p><strong>Precio:</strong> $114.00 - S/435.48</p>
    </div>
    <div class="product-buttons">
        <input type="number" class="quantity-input" value="1">
        <button class="btn btn-primary update-button">Actualizar</button>
        <button class="btn delete-button">Eliminar</button>
    </div>
    <p class="quantity-display">Cantidad solicitada: 1</p>
</div>


<div class="product-window-custom">
    <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP1.jpg" alt="Producto" class="img-o">
    <h2 class="product-title">TARJ. VIDEO MSI GEFORGE GT 730 2GB DDR3 V3</h2>
    <div class="product-details-custom">
        <p><strong>MINICÓDIGO:</strong> 014462</p>
        <p><strong>STOCK:</strong> +10</p>
        <p><strong>Precio:</strong> $114.00 - S/435.48</p>
    </div>
    <div class="product-buttons">
        <input type="number" class="quantity-input" value="1">
        <button class="btn btn-primary update-button">Actualizar</button>
        <button class="btn delete-button">Eliminar</button>
    </div>
    <p class="quantity-display">Cantidad solicitada: 1</p>
</div>


<!-- Agregar más ventanas de productos aquí -->

<script>
    // Obtener todos los botones "Actualizar" en la página
    const updateButtons = document.querySelectorAll('.update-button');
    
    // Agregar un controlador de eventos a cada botón "Actualizar"
    updateButtons.forEach((button) => {
        button.addEventListener('click', () => {
            // Obtener el elemento .quantity-input dentro de la ventana de producto correspondiente
            const quantityInput = button.parentElement.querySelector('.quantity-input');
            const quantityDisplay = button.parentElement.parentElement.querySelector('.quantity-display');
            quantityDisplay.textContent = `Cantidad solicitada: ${quantityInput.value}`;
        });
    });
</script>			
		
		
		</div>
<button type="button" class="btn btn-yellow btn-realizar-pedido" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
Realizar Pedido
</button>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title fs-5" id="staticBackdropLabel">Detalles de Facturación</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="order-form-container">

<div class="order-form-details">
    <form>
        <label class="form-label">Tipo de Comprobante:</label>
        <select class="form-select">
            <option value="boleta">Boleta</option>
            <option value="factura">Factura</option>
        </select>

        <label class="form-label">DNI:</label>
        <input type="text" class="form-input">

        <label class="form-label">Nombre:</label>
        <input type="text" class="form-input">

        <label class="form-label">Apellido:</label>
        <input type="text" class="form-input">

        <label class="form-label">Teléfono de Contacto:</label>
        <input type="text" class="form-input">

        <label class="form-label">Correo Electrónico:</label>
        <input type="email" class="form-input">

        <label class="form-label">Departamento:</label>
        <input type="text" class="form-input">

        <label class="form-label">Provincia:</label>
        <input type="text" class="form-input">

        <label class="form-label">Distrito:</label>
        <input type="text" class="form-input">

        <label class="form-label">Dirección de la Calle:</label>
        <input type="text" class="form-input">

        <label class="form-label">Comentarios Extras:</label>
        <textarea class="form-input" rows="3"></textarea>
		
		<label class="form-label">Número de Tarjeta:</label>
        <input type="text" class="form-input">
            
        <label class="form-label">Fecha de Vencimiento:</label>
        <input type="text" class="form-input" placeholder="MM/AA">
            
        <label class="form-label">CVV:</label>
        <input type="password" class="form-input" maxlength="3">
    </form>
</div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Realizar Pedido</button>
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
<script src="scripts/scriptPri.js"></script>
</body>
</html>

