package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import entidades.Usuario;
import database.MysqlConexion;

public class UsuarioDAO {

    // Método para registrar un nuevo usuario en la base de datos
    public static boolean registrarUsuario(Usuario usuario) {
        boolean registroExitoso = false;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Obtener la conexión a la base de datos
            conn = MysqlConexion.getConexion();

            // Preparar la consulta SQL para insertar el nuevo usuario
            String sql = "INSERT INTO usuarios (usuario, contrasena, correo) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getUsuario());
            stmt.setString(2, usuario.getContrasena());
            stmt.setString(3, usuario.getCorreo());

            // Ejecutar la consulta
            int filasInsertadas = stmt.executeUpdate();

            // Verificar si se insertó el usuario correctamente
            if (filasInsertadas > 0) {
                registroExitoso = true;
            }

        } catch (SQLException e) {
            System.out.println("Error al registrar el usuario en la base de datos: " + e.getMessage());
        } finally {
            // Cerrar recursos
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión a la base de datos: " + e.getMessage());
            }
        }

        return registroExitoso;
    }
}


