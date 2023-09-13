package com.mess.info;

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
 * Servlet implementation class addmenu
 */
@WebServlet("/addmenu")
public class addmenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addmenu() {
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
		HttpSession session = request.getSession(true);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw=response.getWriter();
	String txtbreakfast=request.getParameter("txtbreakfast");
	String txtsabzi1=request.getParameter("txtsabzi1");
	String txtsabzi2=request.getParameter("txtsabzi2");
	String dtxtsabzi1=request.getParameter("dtxtsabzi1");
	String dtxtsabzi2=request.getParameter("dtxtsabzi2");
	String roti=request.getParameter("roti");
	String txtrice=request.getParameter("txtrice");
	String Achar=request.getParameter("Achar");
	String txtpapad=request.getParameter("txtpapad");
	String txtlunchprice=request.getParameter("txtlunchprice");
	String txtdinnerprice=request.getParameter("txtdinnerprice");
	String Uname=(String)session.getAttribute("U_name");
	String Email=(String)session.getAttribute("mess_email");
	String address=(String)session.getAttribute("mess_address");
	String mess_name=(String)session.getAttribute("mess_name");
	try
	  {
		String lunch_data=txtsabzi1+","+txtsabzi2+","+roti+","+txtrice+","+Achar+","+txtpapad;
		String dinner_data=dtxtsabzi1+","+dtxtsabzi2+","+roti+","+txtrice+","+Achar+","+txtpapad;
		Connection con;
		con = Dbconn.conn();
		String sql="insert into tblmenudata(username,mess_name,location_address,Email,breakfast_data,lunch_data,dinner_data,lunch_price,dinner_price) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement p=(PreparedStatement) con.prepareStatement(sql);
		
		
		p.setString(1,Uname );
		p.setString(2,mess_name);
		p.setString(3,address);
		p.setString(4,Email);
		p.setString(5,txtbreakfast);
		p.setString(6, lunch_data);
		p.setString(7,dinner_data);
		p.setString(8, txtlunchprice);
		p.setString(9,txtdinnerprice);
		
		int i=p.executeUpdate();
		if(i!=0)
		{
			System.out.println("OK ");
			pw.println("<script> alert(' Save Successfuly');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/Mess_Home.jsp");
			rd.include(request, response); 
		}
		else
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("/Mess_Home.jsp");
					rd.include(request, response);
			//System.out.print(" Wrong ID and Password");
		}
		
	}
	catch(Exception exc)
	{
		System.out.println(exc);
	}
	}

}
