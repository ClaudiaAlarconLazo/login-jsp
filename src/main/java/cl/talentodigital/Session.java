package cl.talentodigital;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Session
 */
@WebServlet("/Session")
public class Session extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Session() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		String mensaje = null;
		
		if(nombre.equals("Administrador") && password.equals("1234")) {
			session.setAttribute("nombreSession", nombre);		
			session.setAttribute("passwordSession", password);
			response.sendRedirect("agregar.jsp");
		} else if(nombre.equals("Administrador") && !password.equals("1234")){
			mensaje = "Contraseña incorrecta.";
			session.setAttribute("mensaje", mensaje);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			session.setAttribute("nombreSession", nombre);		
			session.setAttribute("passwordSession", password);
			response.sendRedirect("index.jsp");
		}
		
		
	}

}
