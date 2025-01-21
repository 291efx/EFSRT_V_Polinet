package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import database.MysqlConexion;
import entidades.Usuario;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        Usuario usuario = authenticateUser(correo, contrasena);

        if (usuario != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            response.sendRedirect("Inicio.jsp");
        } else {
            response.sendRedirect("LoginRegistro.jsp?error=Usuario o contraseña incorrectos. Por favor, inténtalo nuevamente.");
        }
    }

    private Usuario authenticateUser(String correo, String contrasena) {
        Usuario usuario = null;

        try (Connection con = MysqlConexion.getConexion()) {
            String sql = "SELECT * FROM usuarios WHERE correo = ? AND contrasena = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, correo);
            stmt.setString(2, contrasena);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("id");
                usuario = new Usuario(id, correo, contrasena, sql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }
}
