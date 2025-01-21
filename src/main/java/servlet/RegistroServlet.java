package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entidades.Usuario;
import modelo.UsuarioDAO;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener los datos del formulario de registro
        String nombreUsuario = request.getParameter("nombreUsuario");
        String correoElectronico = request.getParameter("correoElectronico");
        String contrasena = request.getParameter("contrasena");

        // Crear un objeto Usuario con los datos del formulario
        Usuario nuevoUsuario = new Usuario(0, nombreUsuario, correoElectronico, contrasena);

        // Guardar el nuevo usuario en la base de datos
        boolean registroExitoso = UsuarioDAO.registrarUsuario(nuevoUsuario);

        // Redirigir a una página de éxito o mostrar un mensaje de registro exitoso
        if (registroExitoso) {
            response.sendRedirect("Inicio.jsp");
        } else {
            response.sendRedirect("LoginRegistro.jsp?error=Error al registrar el usuario en la base de datos.");
        }
    }
}