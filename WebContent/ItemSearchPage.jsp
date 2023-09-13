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
				          <li class="menu-active"><a href="UserHome.jsp">HOME</a></li>
				         <li><a href="BuyProduct.jsp">Buy Product</a></li>
				          <li ><a href="ItemSearchPage.jsp">Search</a></li>
				          <!-- <li ><a href="randomitemset">Recommendation</a></li> -->
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
						<div class="menu-content pb-60 col-lg-7">
							<div class="title text-center">
								<h1 class="mb-10 text-white">Show Data</h1>
								<br>
							</div>
			<div class="form-group">
			<div>
			<%  Connection conn1=Dbconn.conn();
			String email=(String)session.getAttribute("Uemail");
			Statement st10=conn1.createStatement();
			 ResultSet rs010=st10.executeQuery("SELECT * FROM tblrecommdation  where Uemail='"+email+"' order by T_Id desc");
	            if(rs010.next())
	            {
	            	String[] data=rs010.getString("Itemset").toString().split(",");
	            	for(int ii=0;ii<data.length;ii++)
	            	{
			%>
			
			<marquee id="test" style="color: red;" behavior="scroll" direction="left"  scrolldelay="100" scrollamount="2" onMouseOver="document.all.test.stop()" onMouseOut="document.all.test.start()">
			
			<%=data[ii].toString() %>
			</marquee>
			
			<%}
	            	}
	            %>
	           </div>
			<form method="post" action="ItemSearchPage.jsp">
			<table class="table table-responsive table-bordered" >
	      
		
		    <tr>
			<td class="col-md-2"><label for="txt_Pname" style="color:White;font-size:18px;">Category Name:</label></td>
			<td class="col-md-6">
			
			<select class="form-control" name="txt_Pnamenew" required onchange="this.form.submit();" >
 							<option value="null">----Select ----</option>
            <%
            Connection conn=Dbconn.conn();
            Statement st=conn.createStatement();
            String d=null;
            ResultSet rs1=st.executeQuery("SELECT * FROM tblitemsetdata ");
            while(rs1.next())
            {
            %>
            <option value=<%=rs1.getString(2) %>><%=rs1.getString(2) %></option>
            
			<%
            }
           
			%>
			</select>
			
			</tr>
			</table>
			</form>
			<form action="ItemSearchPage" method="post">
			<%
			String category=request.getParameter("txt_Pnamenew");

			
			%>
			<table class="table table-responsive table-bordered">
			<tr>
			<td class="col-md-2"><label for="txt_Pquantity" style="color:White;font-size:18px;">Category</label></td>
			<td class="col-md-6"><input type="text" class="form-control" name="txt_category" readonly="readonly" id="txt_Pquantity" value="<%=category %>" ></td>
			
			</tr>
			<tr>
			<td class="col-md-2"><label for="txt_Pname" style="color:White;font-size:18px;">Product Name:</label></td>
			<td class="col-md-6">
			<select class="form-control" name="txt_Pname" required  >
 							<option value="null">----Select ----</option>
            <%
           
            Statement st1=conn.createStatement();
            
            ResultSet rs01=st1.executeQuery("SELECT * FROM tblitemsetdata  where category='"+category+"'");
            if(rs01.next())
            {
            	String[] data=rs01.getString(3).split(",");
            	System.out.println(data[0]);
            	for(int i=0;i<data.length;i++)
            	{
            %>
            <option value=<%=data[i] %>><%=data[i] %></option>
            
			<%
            }
            }
           
			%>
			</select>
			</td>
			</tr>
		<tr>
			<td class="col-md-6" colspan="2" align="center" ><input type="submit" class="btn btn-primary" name="btn_Submit" id="btn_Submit" Value="Search Product"></td>
			</tr>
			</table>
			</form>
			
			
			
			
			
			
			
			
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