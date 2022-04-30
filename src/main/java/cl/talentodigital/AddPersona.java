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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter print = response.getWriter();
		print.print("HOLA");
		HttpSession session = request.getSession();
		session.setAttribute("listaPrivada", Lista.personasPrivada);
		
		ServletContext context = request.getServletContext();
		context.setAttribute("listaGlobal", Lista.personasGlobal);
		
		String nombreForm = request.getParameter("nombreForm");
		String apellidoForm = request.getParameter("apellidoForm");
		int edadForm = Integer.parseInt(request.getParameter("edadForm"));
		String global = request.getParameter("global");
		
		Persona persona = new Persona(nombreForm, apellidoForm, edadForm);
		
		if(global != null && global.equals("on")) {
			Lista.personasGlobal.add(persona);
			response.sendRedirect("index.jsp");
		} else {
			Lista.personasPrivada.add(persona);		
			response.sendRedirect("lista-privada.jsp");
		}

		
	}
	
	


}
