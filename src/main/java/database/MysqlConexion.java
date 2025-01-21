package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class MysqlConexion {

	    public static Connection getConexion() {
	        Connection cn = null;

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver").getConstructor().newInstance();
	            String url = "jdbc:mysql://localhost:3306/polinet?useSSL=false&useTimezone=true&serverTimezone=UTC";
	            String user = "root";
	            String pass = "";
	            cn = DriverManager.getConnection(url, user, pass);
	            System.out.println("Conexión correcta a la base de datos");

	        } catch (SQLException e) {
	            System.out.println("Error de conexión con la base de datos: " + e.getMessage());
	        } catch (Exception e) {
	            System.out.println("Error general: " + e.getMessage());
	        }
	        
	        return cn;
	    }
	}
