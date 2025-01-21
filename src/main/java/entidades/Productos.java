package entidades;

public class Productos {

	public class Producto {
	    private int id;
		private String nombre;
	    private String descripcion;
	    private double precio;
	    private String imagenUrl;
	    private String categoria;
	    private int cantidadStock;
	    private double calificacion;

	    public Producto(int id, String nombre, String descripcion, double precio, String imagenUrl,
	                    String categoria, int cantidadStock, double calificacion) {
	        this.id = id;
	        this.nombre = nombre;
	        this.descripcion = descripcion;
	        this.precio = precio;
	        this.imagenUrl = imagenUrl;
	        this.categoria = categoria;
	        this.cantidadStock = cantidadStock;
	        this.calificacion = calificacion;
	    }

	    
	    public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
		}

		public String getDescripcion() {
			return descripcion;
		}

		public void setDescripcion(String descripcion) {
			this.descripcion = descripcion;
		}

		public double getPrecio() {
			return precio;
		}

		public void setPrecio(double precio) {
			this.precio = precio;
		}

		public String getImagenUrl() {
			return imagenUrl;
		}

		public void setImagenUrl(String imagenUrl) {
			this.imagenUrl = imagenUrl;
		}

		public String getCategoria() {
			return categoria;
		}

		public void setCategoria(String categoria) {
			this.categoria = categoria;
		}

		public int getCantidadStock() {
			return cantidadStock;
		}

		public void setCantidadStock(int cantidadStock) {
			this.cantidadStock = cantidadStock;
		}

		public double getCalificacion() {
			return calificacion;
		}

		public void setCalificacion(double calificacion) {
			this.calificacion = calificacion;
		}

	}

	
}
