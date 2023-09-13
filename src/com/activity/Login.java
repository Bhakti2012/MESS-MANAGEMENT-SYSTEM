package com.activity;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.Dbconn;

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
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		session.invalidate();

		out.println("<script type=\"text/javascript\">");
		out.println("alert('You are successfully logged out!');");
		out.println("</script>");
		request.getRequestDispatcher("Login.jsp").include(request, response);
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		PrintWriter pw = response.getWriter();
		System.out.println("Login Servlet");
		String username = request.getParameter("txt_Uname");
		String Password = request.getParameter("txt_Password");
		System.out.println("Name" + request.getParameter("txt_Uname"));
		System.out.println("Password" + request.getParameter("txt_Password"));
		String roll = request.getParameter("roll");
		if (roll.equals("user")) {
			Connection con;
			try {
				con = Dbconn.conn();
				Statement stRegister = con.createStatement();
				ResultSet rsLogin;
				rsLogin = stRegister
						.executeQuery("select * from userregistration where Email_Id='"
								+ username
								+ "' and Upassword='"
								+ Password
								+ "'");
				if (rsLogin.next()) {
					session.setAttribute("name", rsLogin.getString(2));
					session.setAttribute("Uemail", username);
					RequestDispatcher rd = request
							.getRequestDispatcher("/UserHome.jsp");
					rd.include(request, response);

				} else {
					pw.println("<script> alert(' Wrong UserName and Password');</script>");
					RequestDispatcher rd = request
							.getRequestDispatcher("/Login.jsp");
					rd.include(request, response);

				}
			} catch (Exception e) {

			}
		}
		if (roll.equals("Mess")) {
			Connection con;
			try {
				con = Dbconn.conn();
				Statement stRegister = con.createStatement();
				ResultSet rsLogin;
				rsLogin = stRegister
						.executeQuery("select * from mess_user where email='"
								+ username
								+ "' and password='"
								+ Password
								+ "'");
				if (rsLogin.next()) {
					session.setAttribute("U_name", rsLogin.getString(2));
					session.setAttribute("mess_email", username);
					session.setAttribute("mess_address", rsLogin.getString(3));
					session.setAttribute("mess_name", rsLogin.getString(8));
					RequestDispatcher rd = request
							.getRequestDispatcher("/Mess_Home.jsp");
					rd.include(request, response);

				} else {
					pw.println("<script> alert(' Wrong UserName and Password');</script>");
					RequestDispatcher rd = request
							.getRequestDispatcher("/LoginPage.jsp");
					rd.include(request, response);

				}
			} catch (Exception e) {

			}
		} else if (roll.equals("Admin")) {
			if (username.equals("admin@gmail.com") && Password.equals("admin")) {

				RequestDispatcher rd = request
						.getRequestDispatcher("/HomePage.jsp");
				rd.include(request, response);
			}

			else {
				pw.println("<script> alert(' Wrong UserName and Password');</script>");
				RequestDispatcher rd = request
						.getRequestDispatcher("/Login.jsp");
				rd.include(request, response);
			}
		}

	}
}
