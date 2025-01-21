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
		<div class="r-r">
           <div class="col-8">
               <div class="medi">
                   <a href="#" class="a-i-index">
                      <img id="baner" src="imgs/imagenes/ImagenesIndex/PublicidadPrincipalIndex/PP7.png" alt="" class="img-index">
                   </a>
                </div>
            </div>
           	<div class="Col-4">
                <div class="sb">
                   <a href="#" class="a-index">
                      <img src="imgs/PPC1.jpg" alt="" class="img2-index">
                   </a>
                </div>
                       
           	<div class="sb mt">
                <a href="#" class="a-index">
                   <img src="imgs/PPC2.jpg" alt="" class="img2-index">
                </a>
            </div>
          </div>
        </div>
        <div class="car">
        	<div class="col-md-3">
                <div class="conte3-0">
                    <div class="conte30">
                        <div class="icon-ban">
                            <img src="imgs/imagenes/ImagenesIndex/Iconos/I1.png" alt="">
                        </div>
                        <a href="" class="titulo-ban">
                            <h3>Promociones</h3>
                            <p>Mejores Promociones Dia a Dia</p>
                        </a>
                    </div>
                    <div class="conte30">
                        <div class="icon-ban">
                            <img src="imgs/imagenes/ImagenesIndex/Iconos/I2.png" alt="">
                        </div>
                        <a href="" class="titulo-ban">
                            <h3>Garantia</h3>
                            <p>Si los productos tienen problemas</p>
                        </a>
                    </div>
                    <div class="conte30">
                        <div class="icon-ban">
                            <img src="imgs/imagenes/ImagenesIndex/Iconos/I3.png" alt="">
                        </div>
                        <a href="" class="titulo-ban">
                            <h3>A menos de $ 49.9</h3>
                            <p>Los mejores precios en productos</p>
                        </a>
                    </div>
                    <div class="conte30">
                        <div class="icon-ban">
                            <img src="imgs/imagenes/ImagenesIndex/Iconos/I4.png" alt="">
                        </div>
                        <a href="" class="titulo-ban">
                            <h3>Lo nuevo</h3>
                            <p>En nuestros productos</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="centrada">
  <div>
    <div>
      <h2 class="h-index">Nuevos Productos</h2>
    </div>
    
    <div class="conte3">
       <div class="conte4">
         <div class="d-i">
            <a href="" class="a-img-o">
              <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP1.jpg" alt="" class="img-o">
            </a>
         </div>
     <div class="c-d-pro">
        <h4 class="txt-h4">
            <a href="VentProduct.jsp" class="h-a">TARJ. VIDEO MSI GEFORGE GT 730 2GB DDR3 V3</a>
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
                     014462
                 </p>
                 <p class="txt-cs">
                     <b class="b-o">STOCK</b>
                             +10
                         </p>
                     </div>
                     <div class="d-btn">
                         <button type="submit" class="btn btn-primary">$114.00 - S/435.48</button>
                     </div>
                 </div>
             </div>
             <div class="conte4">
                 <div class="d-i">
                     <a href="" class="a-img-o">
                         <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP2.jpg" alt="" class="img-o">
                     </a>
                 </div>
                 <div class="c-d-pro">
                     <h4 class="txt-h4">
                         <a href="#" class="h-a">TARJ. VIDEO MAXSUN GEFORCE GT 730 2GB DDR5</a>
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
	                             <button type="submit" class="btn btn-primary">$98.00 - S/374.36</button>
	                         </div>
	                     </div>
	                 </div>
              <div class="conte4">
                  <div class="d-i">
                      <a href="" class="a-img-o">
                          <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP3.jpg" class="img-o">
                      </a>
                  </div>
                  <div class="c-d-pro">
                      <h4 class="txt-h4">
                          <a href="#" class="h-a">MONITOR BRNG LED 27" ( PD2700QT ) ARTES GRAFICAS</a>
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
                              014455
                          </p>
                          <p class="txt-cs">
                              <b class="b-o">STOCK</b>
                              2
                          </p>
                      </div>
                      <div class="d-btn">
                          <button type="submit" class="btn btn-primary">$464.00 - S/1 772.484</button>
                      </div>
                  </div>
              </div>
              <div class="conte4">
                  <div class="d-i">
                      <a href="" class="a-img-o">
                          <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP4.jpg" alt="" class="img-o">
                      </a>
                  </div>
                  <div class="c-d-pro">
                      <h4 class="txt-h4">
                          <a href="#" class="h-a">MONITOR BENQ LED BACKLIGTH 32" ( PD3200U )</a>
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
                               014456
                           </p>
                           <p class="txt-cs">
                               <b class="b-o">STOCK</b>
                               2
                           </p>
                       </div>
                       <div class="d-btn">
                           <button type="submit" class="btn btn-primary">$986.00 - S/3 766.52</button>
                       </div>
	                     </div>
	                 </div>
	                 <div class="conte4">
	                     <div class="d-i">
	                         <a href="" class="a-img-o">
	                             <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP5.jpg" alt="" class="img-o">
	                         </a>
	                     </div>
	                     <div class="c-d-pro">
	                         <h4 class="txt-h4">
	                             <a href="#" class="h-a">PROYECTOR BENQ MX631ST DLP ( MX631ST ) | VGA | 2 HDMI</a>
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
                             014454
                         </p>
                         <p class="txt-cs">
                             <b class="b-o">STOCK</b>
                             9
                         </p>
                     </div>
                     <div class="d-btn">
                         <button type="submit" class="btn btn-primary">$766.00 - S/3 402</button>
                     </div>
                 </div>
             </div>
             <div class="conte4">
                 <div class="d-i">
                     <a href="" class="a-img-o">
                         <img src="imgs/imagenes/ImagenesIndex/BarraNuevosProductos/BNP6.jpg" alt="" class="img-o">
                     </a>
                 </div>
                 <div class="c-d-pro">
                     <h4 class="txt-h4">
                         <a href="#" class="h-a">MONITOR BENQ LED 27" ( GW2785TC ) | EYE - CARE | </a>
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
                             014457
                         </p>
                         <p class="txt-cs">
                             <b class="b-o">STOCK</b>
                             2
                         </p>
                     </div>
                     <div class="d-btn">
                         <button type="submit" class="btn btn-primary">$340.00 - S/1 298.80</button>
                     </div>
                 </div>
             </div>
         </div>
     </div>                          
 </div> 
 
 
<div class="contet-3-img">
    <div class="fxd">
        <div class="sdd">
            <a href="#" class="a-in">
                <img src="imgs/PPI1.jpg" alt="" class="img3-index">
            </a>
        </div>
        <div class="sdd">
            <a href="#" class="a-in">
                <img src="imgs/PPI2.jpg" alt="" class="img3-index">
            </a>
        </div>
        <div class="sdd">
            <a href="#" class="a-in">
                <img src="imgs/PPI3.jpg" alt="" class="img3-index">
            </a>
        </div>
    </div>
</div>
 <div class="centrada">
        <div>
            <div>
                <h2 class="h-index">
                    Lo mas vendidos
                </h2>
            </div>
            <div class="conte3">
                <div class="conte4">
                    <div class="d-i">
                        <a href="" class="a-img-o">
                            <img src="imgs/imagenes/ImagenesIndex/BarraLoMasVendido/BLMV1.jpg" alt="" class="img-o">
                        </a>
                    </div>
                    <div class="c-d-pro">
                        <h4 class="txt-h4">
                            <a href="#" class="h-a">CASE GAMBYTE GOWA ARGB (GTT1205A) S/ FUENTE DE PODER</a>
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
                                011361
                            </p>
                            <p class="txt-cs">
                                <b class="b-o">STOCK</b>
                                2
                            </p>
                        </div>
                        <div class="d-btn">
                            <button type="submit" class="btn btn-primary">$58.00 - S/221.56</button>
                        </div>
                    </div>
                </div>
                <div class="conte4">
                    <div class="d-i">
                        <a href="" class="a-img-o">
                            <img src="imgs/imagenes/ImagenesIndex/BarraLoMasVendido/BLMV2.webp" alt="" class="img-o">
                        </a>
                    </div>
                    <div class="c-d-pro">
                        <h4 class="txt-h4">
                            <a href="#" class="h-a">MEM.RAM THERMALTAKE H-ONE DDR4 16GB ( 2 * 8 ) / 2666MHZ</a>
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
                                011449
                            </p>
                            <p class="txt-cs">
                                <b class="b-o">STOCK</b>
                                2
                            </p>
                        </div>
                        <div class="d-btn">
                            <button type="submit" class="btn btn-primary">$95.00 - S/362.90</button>
                        </div>
                    </div>
                </div>
                <div class="conte4">
                    <div class="d-i">
                        <a href="" class="a-img-o">
                            <img src="imgs/imagenes/ImagenesIndex/BarraLoMasVendido/BLMV3.jpg" alt="" class="img-o">
                        </a>
                    </div>
                    <div class="c-d-pro">
                        <h4 class="txt-h4">
                            <a href="#" class="h-a">PC MINI INTEL NUC NUC10FNH ( BXNUC1013FNH1 )</a>
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
                                011540
                            </p>
                            <p class="txt-cs">
                                          <b class="b-o">STOCK</b>
                                          +10
                                      </p>
                                  </div>
                                  <div class="d-btn">
                                      <button type="submit" class="btn btn-primary">$339.00 - S/1294.98</button>
                                  </div>
                              </div>
                          </div>
                          <div class="conte4">
                              <div class="d-i">
                                  <a href="" class="a-img-o">
                                      <img src="imgs/imagenes/ImagenesIndex/BarraLoMasVendido/BLMV4.webp" alt="" class="img-o">
                                  </a>
                              </div>
                              <div class="c-d-pro">
                                  <h4 class="txt-h4">
                                      <a href="#" class="h-a">COOLER PARA LAPTOP COOLER MASTES ERGOSTAND</a>
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
                                          010048
                                      </p>
                                      <p class="txt-cs">
                                          <b class="b-o">STOCK</b>
                                          5
                                      </p>
                                  </div>
                                  <div class="d-btn">
                                      <button type="submit" class="btn btn-primary">$34.00 - S/129.88</button>
                                  </div>
                              </div>
                          </div>
                          <div class="conte4">
                              <div class="d-i">
                                  <a href="" class="a-img-o">
                                      <img src="imgs/imagenes/ImagenesIndex/BarraLoMasVendido/BLMV5.jpg" alt="" class="img-o">
                                  </a>
                              </div>
                              <div class="c-d-pro">
                                  <h4 class="txt-h4">
                                      <a href="#" class="h-a">AURICULAR HYPERX CLOUD ALPHA S ( HX-HSCAS-BK )</a>
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
                                          011612
                                      </p>
                                      <p class="txt-cs">
                                          <b class="b-o">STOCK</b>
                                          6
                                      </p>
                                  </div>
                                  <div class="d-btn">
                                      <button type="submit" class="btn btn-primary">$92.00 - S/351.44</button>
                                  </div>
                              </div>
                          </div>
                          <div class="conte4">
                              <div class="d-i">
                                  <a href="" class="a-img-o">
                                      <img src="imgs/imagenes/ImagenesIndex/BarraLoMasVendido/BLMV6.jpg" alt="" class="img-o">
                                  </a>
                              </div>
                              <div class="c-d-pro">
                                  <h4 class="txt-h4">
                                      <a href="#" class="h-a">SSD SOLIDO WERSTERN DIGITAL 480GB ( WDS480G2G0 )</a>
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
                                          008439
                                      </p>
                                      <p class="txt-cs">
                                          <b class="b-o">STOCK</b>
                                          8
                                      </p>
                                  </div>
                                  <div class="d-btn">
                                      <button type="submit" class="btn btn-primary">$70.00 - S/267.40</button>
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

