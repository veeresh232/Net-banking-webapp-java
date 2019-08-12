package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Functionality;

/**
 * Servlet implementation class moneyTransferServlet
 */
@WebServlet("/moneyTransferServlet")
public class moneyTransferServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public moneyTransferServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session=request.getSession();
	    String userId=(String) session.getAttribute("userId");
		long acnum=Long.parseLong(request.getParameter("ac2"));
		String ifsc=request.getParameter("ifsc").toLowerCase();
		float amount=Float.parseFloat(request.getParameter("amount"));
		int pin=Integer.parseInt(request.getParameter("pin"));
		Functionality functionality=new Functionality();
		String result=functionality.sendMoney(userId, acnum, ifsc, amount, pin);
		if(result.matches("^[0-9]+$")){
			session.setAttribute("tId", result);
			response.sendRedirect("success.jsp");
		}
		else {
			session.setAttribute("error", result);
			response.sendRedirect("money_transfer.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
