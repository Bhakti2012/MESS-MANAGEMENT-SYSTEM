package com.admininfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.Dbconn;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class addmess
 */
@WebServlet("/addmess")
public class addmess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addmess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
			PrintWriter pw=response.getWriter();
			String Uname,Address,Email,Number,Password;
		
			Uname=request.getParameter("txtName");
			System.out.println("UserName"+Uname);
			Address=request.getParameter("txtAddress");
			System.out.println("Address"+Address);
			String gender=request.getParameter("rdoGender");
			System.out.println("gender"+gender);
			Email=request.getParameter("txtEmail");
			System.out.println("EmailId"+Email);
			Number=request.getParameter("txtContact");
			System.out.println("MobNo"+Number);
			Password=request.getParameter("passPassword");
			System.out.println("Password"+Password);
			String mess_name=request.getParameter("txtmessName");
			  try
			  {
				Connection con;
				con = Dbconn.conn();
				String sql="insert into mess_user(username,localaddress,gender,email,mob_number,password,mess_name) values(?,?,?,?,?,?,?)";
				PreparedStatement p=(PreparedStatement) con.prepareStatement(sql);
				
				
				p.setString(1,Uname );
				p.setString(2,Address);
				p.setString(3,gender);
				p.setString(4,Email);
				p.setString(5,Number);
				p.setString(6, Password);
				p.setString(7,mess_name);
				
				int i=p.executeUpdate();
				if(i!=0)
				{
					System.out.println("OK ");
					pw.println("<script> alert(' Save Successfuly');</script>");
					RequestDispatcher rd = request.getRequestDispatcher("/HomePage.jsp");
					rd.include(request, response); 
				}
				else
				{
					
					RequestDispatcher rd = request.getRequestDispatcher("/AddMess.jsp");
							rd.include(request, response);
					//System.out.print(" Wrong ID and Password");
				}
				
			}
			catch(Exception exc)
			{
				
			}
	}

}
