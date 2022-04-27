package cl.talentodigital;

public class Persona {
	private static int count = 1;
	private int id;
	private String nombre;
	private String apellido;
	private int edad;
	
	
public Persona(String nombre, String apellido, int edad) {
	super();
	this.nombre = nombre;
	this.apellido = apellido;
	this.edad = edad;
	id = count++;
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


public String getApellido() {
	return apellido;
}


public void setApellido(String apellido) {
	this.apellido = apellido;
}


public int getEdad() {
	return edad;
}


public void setEdad(int edad) {
	this.edad = edad;
};


	
	
}
