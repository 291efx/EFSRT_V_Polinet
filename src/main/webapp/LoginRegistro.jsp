<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/StyleLR.css">
	<link rel="icon" type="image/jpg" href="imgs/imagenes/IconLogo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <title>Polinet S.A.C</title>
</head>

<body>
    <div class="container-form sign-up">
        <div class="welcome-back">
            <div class="message">
                <h2>Bienvenido a Polinet</h2>
                <p>Si ya tienes una cuenta por favor inicia sesion aqui</p>
                <button class="sign-up-btn">Iniciar Sesion</button>
            </div>
        </div>
        <form class="formulario" id="registerForm" action="RegistroServlet" method="post">
            <h2 class="create-account">Crear una cuenta</h2>
            <div class="iconos">
                <div class="border-icon">
                    <i class='bx bxl-instagram'></i>
                </div>
                <div class="border-icon">
                    <i class='bx bxl-linkedin' ></i>
                </div>
                <div class="border-icon">
                    <i class='bx bxl-facebook-circle' ></i>
                </div>
            </div>
            <p class="cuenta-gratis">Crear una cuenta gratis</p>
            <input type="text" placeholder="Nombre" id="nombreUsuario" name="nombreUsuario" required>
            <input type="email" placeholder="Email" id="correoElectronico" name="correoElectronico" required>
            <input type="password" placeholder="Contrase�a" id="contrasena" name="contrasena" required>
            <input type="button" value="Registrarse" id="registerBtn">
        </form>
    </div>
    <div class="container-form sign-in">
        <form class="formulario" id="loginForm" action="LoginServlet" method="post">
            <h2 class="create-account">Iniciar Sesion</h2>
            <p class="cuenta-gratis">�A�n no tienes una cuenta?</p>
            <input type="email" placeholder="Email" id="correoElectronicoLogin" name="correo" required>
            <input type="password" placeholder="Contrase�a" id="contrasenaLogin" name="contrasena" required>
            <input type="button" value="Iniciar Sesion" id="signinBtn">
        </form>
        <div class="welcome-back">
            <div class="message">
                <h2>Bienvenido de nuevo</h2>
                <p>Si a�n no tienes una cuenta por favor reg�strate aqu�</p>
                <button class="sign-in-btn">Registrarse</button>
            </div>
        </div>
    </div>
    <script src="scripts/ScriptLR.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $("#signinBtn").on("click", function() {
                var isValid = $("#loginForm").valid();

                if (isValid) {
                    $("#loginForm").trigger('submit');
                }
            });

            $("#loginForm").validate({
                rules: {
                    correo: {
                        required: true,
                        email: true
                    },
                    contrasena: {
                        required: true,
                        minlength: 6
                    }
                },
                messages: {
                    correo: {
                        required: "Por favor, ingrese un correo electr�nico",
                        email: "Por favor, ingrese un correo electr�nico v�lido"
                    },
                    contrasena: {
                        required: "Por favor, ingrese una contrase�a",
                        minlength: "La contrase�a debe tener al menos 6 caracteres"
                    }
                },
                errorClass: "text-danger",
                errorElement: "em",
                errorPlacement: function(error, element) {
                    error.addClass("help-block");
                    error.insertAfter(element);
                },
                highlight: function(element, errorClass, validClass) {
                    $(element).closest(".form-group").addClass("has-error").removeClass("has-success");
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).closest(".form-group").addClass("has-success").removeClass("has-error");
                }
            });
        });
    </script>
    
    <script>
        $(document).ready(function() {
            $("#registerBtn").on("click", function() {
                var isValid = $("#registerForm").valid();

                if (isValid) {
                    $("#registerForm").trigger('submit');
                }
            });

            $("#registerForm").validate({
                rules: {
                    nombreUsuario: {
                        required: true
                    },
                    correoElectronico: {
                        required: true,
                        email: true
                    },
                    contrasena: {
                        required: true,
                        minlength: 6
                    }
                },
                messages: {
                    nombreUsuario: {
                        required: "Por favor, ingrese su nombre de usuario"
                    },
                    correoElectronico: {
                        required: "Por favor, ingrese un correo electr�nico",
                        email: "Por favor, ingrese un correo electr�nico v�lido"
                    },
                    contrasena: {
                        required: "Por favor, ingrese una contrase�a",
                        minlength: "La contrase�a debe tener al menos 6 caracteres"
                    }
                },
                errorClass: "text-danger",
                errorElement: "em",
                errorPlacement: function(error, element) {
                    error.addClass("help-block");
                    error.insertAfter(element);
                },
                highlight: function(element, errorClass, validClass) {
                    $(element).closest(".form-group").addClass("has-error").removeClass("has-success");
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).closest(".form-group").addClass("has-success").removeClass("has-error");
                }
            });
        });
    </script>
</body>

</html>
