package entidades;

public class Usuario extends Subject{

	 	private int id;
	    private String usuario;
	    private String correo;
	    private String contrasena;
	    
	    public Usuario(int id, String usuario, String contrasena, String correo) {
	    	super();
	    	this.id = id;
	    	this.usuario = usuario;
	    	this.correo = contrasena;
	    	this.contrasena = correo;
	    }
	
	    
	    public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUsuario() {
			return usuario;
		}
		public void setUsuario(String usuario) {
			this.usuario = usuario;
		}
		public String getContrasena() {
			return contrasena;
		}
		public void setContrasena(String contrasena) {
			this.contrasena = contrasena;
		}
		public String getCorreo() {
			return correo;
		}
		public void setCorreo(String correo) {
			this.correo = correo;
		}
}
