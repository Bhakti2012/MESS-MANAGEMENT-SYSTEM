package com.activity;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.Dbconn;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class addfeedback
 */
@WebServlet("/addfeedback")
public class addfeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addfeedback() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();

		HttpSession session = request.getSession(true);
		String rating = request.getParameter("star");
		String txt_id = request.getParameter("txt_id");
		String txt_username = request.getParameter("txt_username");
		String txt_mname = request.getParameter("txt_mname");
		String txtfeedback = request.getParameter("txtfeedback");
		String username=(String)session.getAttribute("Uemail");
		int r = Integer.parseInt(rating);
		if (r == 5) {
			rating = "1";
		} else if (r == 4) {
			rating = "2";

		} else if (r == 3) {
			rating = "3";
		} else if (r == 2) {
			rating = "4";
		} else if (r == 1) {
			rating = "5";
		}
		try {
			Connection con;
			con = Dbconn.conn();

			String sql = "insert into tblfeedback(mess_id,mess_username,mess_name,feedback_info,rating_info,username) values(?,?,?,?,?,?)";
			PreparedStatement p = (PreparedStatement) con.prepareStatement(sql);

			p.setString(1, txt_id);
			p.setString(2, txt_username);
			p.setString(3, txt_mname);
			p.setString(4,txtfeedback);
			p.setString(5, rating);
			p.setString(6, username);

			int i = p.executeUpdate();
			if (i != 0) {
				System.out.println("OK ");
				pw.println("<script> alert('Save Feedback Successfuly');</script>");
				RequestDispatcher rd = request
						.getRequestDispatcher("/SearchPage.jsp");
				rd.include(request, response);
			}

		} catch (Exception exc) {

		}
	}

}
