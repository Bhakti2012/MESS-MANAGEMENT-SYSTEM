<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Date"%>
<%@page import="com.connection.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Product Review</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">							
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/main.css">
		</head>
<body>	
			  <header id="header" id="home">
		  		
			    <div class="container main-menu">
			    	<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				       <jsp:include page="titlepage.jsp"></jsp:include>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li ><a href="UserHome.jsp">HOME</a></li>
				        
				          <li class="menu-active" ><a href="SearchPage.jsp">Search</a></li>
				        
				          <li><a href="Login">LOGOUT</a></li>
				        </ul>
				      </nav><!-- #nav-menu-container -->		    		
			    	</div>
			    </div>
			  </header><!-- #header -->
			  	
			<!-- Start testomial Area -->
			<section class="testomial-area section-gap" id="testimonail">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div >
							<div class="title text-center">
								<h1 class="mb-10 text-white">Show Data</h1>
								<br>
							</div>
			<div class="form-group">
			<form method="post" action="SearchPage.jsp">
			<table style="width: 100%" border="1" >
	      <tr>
	      <td>
						<label for="txt_Pname" style="color:White;font-size:18px;">Search Current Location</label>
							</td>
							<td>
							<select class="form-control" name="txtAddress" required>
 							<option value="null">----Select ----</option>
            <%
            Connection conn=Dbconn.conn();
            Statement st=conn.createStatement();
            String d=null;
            ResultSet rs1=st.executeQuery("SELECT * FROM tblmaster ");
            while(rs1.next())
            {
            %>
            <option value=<%=rs1.getString(2) %>><%=rs1.getString(2) %></option>
            
			<%
            }
           
			%>
			</select>	</td>
					</tr>
						<tr>
						<td colspan="4" align="center"><input type="submit" value="Show Data"
							style="width: 250px;" />
							</td>
							</tr>
							</table>
					</form>
				</div>

				<%
					String selectedvalue1 = request.getParameter("txtAddress");
					
					if (selectedvalue1 != null ) {
						Date d1, d2;
						String date1, date2;
						

						

						Connection con=Dbconn.conn();
				    	   String query="select * from tblmenudata where location_address='"+selectedvalue1+"' ";
				    	   PreparedStatement p=con.prepareStatement(query);
				    	   ResultSet rs=p.executeQuery();
				    	   
				    	  
				       %>
							   <label style="font-size: 20px; font-family: cursive; float: left; margin-left: 25%">Current Location</label>
				               <label style="font-size: 20px; font-family: cursive; color: red; float: left; margin-left: 5%"><%= selectedvalue1 %></label>
				               
				    	<table border="1" width="100%">
				    	<tr>
				    	<td><label for="txt_Pname" style="color:White;font-size:18px;">Mess Id</label></td>
				        		<td><label for="txt_Pname" style="color:White;font-size:18px;">User Name</label></td>
				        		<td ><label for="txt_Pname" style="color:White;font-size:18px;">Location</label></td>
				        		<td><label for="txt_Pname" style="color:White;font-size:18px;">Mess Name</label></td>
				        		<td><label for="txt_Pname" style="color:White;font-size:18px;">View Details</label></td>
				        </tr>
				        
				        <%
				        
				        while(rs.next())
				 	   {
				        	String id=rs.getString(1);
				 	   String username=rs.getString(2);
				 	   String location=rs.getString(4);
				 	   String Messname=rs.getString(3);
				 	  
				       
				       %>	<tr>
						<td><label for="txt_Pname" style="color:White;font-size:18px;"><%=id%></label></td>
						<td><label for="txt_Pname" style="color:White;font-size:18px;"><%=username%></label></td>
						<td><label for="txt_Pname" style="color:White;font-size:18px;"><%=location%></label></td>
						<td><label for="txt_Pname" style="color:White;font-size:18px;"><%=Messname%></label></td>
						<td><a href="MessDetails.jsp?txt_id=<%=id %>">
			<input type="button" class="btn btn-danger" value="View Details"></a></td>
					</tr>
					<%
							
						}
					%>

				</table>

				<%
					}
				%>

			
			
				</div>
		

						</div>
					</div>						
					</div>	
			</section>
			<!-- End testomial Area -->				
			
	

			<!-- start footer Area -->		
		<footer class="footer-area" style="height:20px;">
			<p class="col-lg-8 col-sm-12 footer-text m-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>

			</footer>
			<!-- End footer Area -->	

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/mn-accordion.js"></script>
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>						
			<script src="js/jquery.nice-select.min.js"></script>	
    		<script src="js/jquery.circlechart.js"></script>								
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
</html>