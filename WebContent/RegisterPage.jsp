<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				          <li class="menu-active"><a href="Login.jsp">Login</a></li>
				          <li class="menu-active"><a href="RegisterPage.jsp">Register</a></li>
				          	
				        </ul>
				      </nav><!-- #nav-menu-container -->		    		
			    	</div>
			    </div>
			  </header><!-- #header -->


			<!-- Start discount-section Area -->
			<section class="discount-section-area relative section-gap">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row align-items-center justify-content-between no-gutters">
<div class="col-md-12 col-md-offset-3" >
			<h3 align="center">RESGISTER</h3>    

			<div class="col-md-6" style="margin-left:25%;">			
			<br><br>
			<form role="form" action="Registration" method="post">
			<div class="form-group">
			<table class="table table-responsive table-bordered" >
			<tr>
			<td class="col-md-2"></td>
		    <td class="col-md-6">
		    </td>
		    </tr>
			<tr>
									<td class="lable"><label for="txt_Uname" style="color:White;font-size:18px;">User Name:</label></td>
									<td><input type="text" required 
										name="txtName" style="height: 25px; width: 250px;" /></td>
								</tr>
								<tr>
									<td class="lable"><label for="txt_Uname" style="color:White;font-size:18px;">Address:</label></td>
									<td ><input type="text"
										name="txtAddress" style="height: 70px; width: 250px;" required  /></td>
								</tr>
								<tr>
									<td class="lable" ><label for="txt_Uname" style="color:White;font-size:18px;">Gender:</label></td>

									<td align=left ><input
										type="radio" name="rdoGender" value="Male" id="male" required  /><label for="txt_Uname" style="color:White;font-size:18px;">Male</label> <input
										type="radio" name="rdoGender" value="FeMale" id="female" required  /><label for="txt_Uname" style="color:White;font-size:18px;">Female</label></td>
								</tr>
								<tr>
									<td class="lable" ><label for="txt_Uname" style="color:White;font-size:18px;">Email:</label></td>
									<td><input type="text" required  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
													name="txtEmail" style="height: 25px; width: 250px;" /></td>
								</tr>
								<tr>
									<td class="lable" ><label for="txt_Uname" style="color:White;font-size:18px;">Contact No:</label></td>
									<td ><input type="text" required pattern="[7-9]{1}[0-9]{9}"  maxlength="10" title="Not a valid Phone Number"
										name="txtContact" style="height: 25px; width: 250px;" /></td>
								</tr>
								<tr>
									<td class="lable" ><label for="txt_Uname" style="color:White;font-size:18px;">Password:</label></td>
									<td ><input type="password" required 
										name="passPassword" style="width: 250px;  height: 25px;" /></td>
								</tr>
			<tr>
			<td class="col-md-6" colspan="2" align="center" ><input type="submit" class="btn btn-primary" name="btn_Submit" id="btn_Submit" Value="Register"></td>
			</tr>
			</table>
			</div>
			</form> 			
			</div>	 
			</div>
					</div>
				</div>	
			</section>
			<!-- End discount-section Area -->
			

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