package com.login;

import java.awt.Window;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String pass = request.getParameter("psw");

		if (email.equals("ajinkyab@gmail.com") && pass.equals("12345678")) {
//			session.re
			session.setAttribute("WrongCredentials", null);
			session.setAttribute("WrongEmail", null);
			session.setAttribute("ValidLogin", true);
			response.sendRedirect("login.jsp");

		} else if (!email.contains("@")) {
			System.out.println("WrongEmail************************************");
			session.setAttribute("ValidLogin", null);
			session.setAttribute("WrongEmail", true);
			response.sendRedirect("login.jsp");

		} else if (!email.contains(".com.com")) {
			System.out.println("WrongEmail************************************");
			session.setAttribute("ValidLogin", null);
			session.setAttribute("WrongEmail", true);
			response.sendRedirect("login.jsp");

		} else if (pass.length() < 8) {
			System.out
					.println("************************************ WrongPassword ************************************");
			session.setAttribute("WrongEmail", true);
			session.setAttribute("ValidLogin", null);
			response.sendRedirect("login.jsp");

		} else {
			session.setAttribute("WrongCredentials", true);
			session.setAttribute("ValidLogin", null);	
			response.sendRedirect("login.jsp");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
