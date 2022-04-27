package cl.talentodigital;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddPersona
 */
@WebServlet("/AddPersona")
public class AddPersona extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPersona() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter print = response.getWriter();
		print.print("HOLA");
		HttpSession session = request.getSession();
		session.setAttribute("lista", Lista.personas);
		
		ServletContext context = request.getServletContext();
		context.setAttribute("listaGlobal", Lista.personas);
		
		String nombreForm = request.getParameter("nombreForm");
		String apellidoForm = request.getParameter("apellidoForm");
		int edadForm = Integer.parseInt(request.getParameter("edadForm"));

		agregarPersona(nombreForm, apellidoForm, edadForm, Lista.personas);

		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
		doGet(request, response);
	}
	
	
	public static void agregarPersona(String nombre, String apellido, int edad, ArrayList<Persona> personas) {
		Persona persona = new Persona(nombre, apellido, edad);
		
		personas.add(persona);
		
	}

}