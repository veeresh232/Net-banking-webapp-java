package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Functionality;

/**
 * Servlet implementation class PinChange
 */
@WebServlet("/PinChange")
public class PinChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PinChange() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int oldPin=Integer.parseInt(request.getParameter("old"));
		int newPin=Integer.parseInt(request.getParameter("newPin"));
		HttpSession session=request.getSession();
		String userId=(String) session.getAttribute("userId");
		Functionality functionality=new Functionality();
		int result=functionality.changePin(userId, oldPin, newPin);
		if(result==0) {
			session.setAttribute("error", "Incorrect PIN");
			response.sendRedirect("pin_change.jsp");
		}
		else
			response.sendRedirect("pin_change_success.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
