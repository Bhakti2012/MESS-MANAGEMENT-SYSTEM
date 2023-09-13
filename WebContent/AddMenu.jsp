<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.Dbconn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
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
				<li><a href="HomePage.jsp">Home</a></li>
				<li class="menu-active"><a href="AddMenu.jsp">Add Menu</a></li>
				<li><a href="ShowMess.jsp">Show Mess</a></li>
				<li><a href="Login">Logout</a></li>
			</ul>
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</div>
	</header>
	<!-- #header -->

	<!-- Start testomial Area -->
	<section class="testomial-area section-gap" id="testimonail">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="menu-content pb-60 col-lg-7">
				<div class="title text-center">
					<h1 class="mb-10 text-white">Add Mess</h1>
					<br>
				</div>

				<div class="form-group">


					<form action="addmenu" method="post">

						<table border="1" width="100%">
							<tr>
								<td  colspan="2" align="center"><label for="txt_Uname"
									style="color: red; font-size: 18px;">Select
										Breakfast:</label></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select
										Breakfast:</label></td>
								<td><select class="form-control" name="txtbreakfast" required>
										<option value="null">----Select ----</option>
										<option value="Upma">Upma</option>
										<option value="Idli">Idli</option>
										<option value="Dosa">Dosa</option>
										<option value="Aloo_Paratha">Aloo Paratha</option>
										<option value="Poha">Poha</option>
										<option value="Methi_Paratha">Methi Paratha</option>
										<option value="Gobi_Paratha">Gobi Paratha</option>
										<option value="Samosa">Samosa</option>
										<option value="Khaman_Dhokla">Khaman Dhokla</option>


								</select></td>
							</tr>
							<tr>
								<td  colspan="2" align="center"><label for="txt_Uname"
									style="color: Red; font-size: 18px;">Select
										Lunch Sabzi:</label></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Sabzi:</label></td>
								<td><select class="form-control" name="txtsabzi1" required>
										<option value="null">----Select ----</option>
										<option value="Tamater_Aloo">Tamater Aloo</option>
										<option value="Masoor_Dal">Masoor Dal</option>
										<option value="Patta_Gobhi">Patta Gobhi</option>
										<option value="Mix_Dal">Mix Dal</option>
										<option value="Methi_Aloo">Methi Aloo</option>
										<option value="Dal_Tadka">Dal Tadka</option>
										<option value="Mataki">Mataki</option>
										

								</select></td>
							</tr>
							<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Sabzi:</label></td>
								<td><select class="form-control" name="txtsabzi2" required>
										<option value="null">----Select ----</option>
										<option value="Malai_kofta">Malai kofta</option>
										<option value="Palak_Paneer">Palak Paneer</option>
										<option value="Rajma">Rajma</option>
										<option value="Mutter_Paneer">Mutter Paneer</option>
										<option value="Chole">Chole</option>
										<option value="Pav_Bhaji">Pav Bhaji</option>
										<option value="Bhindi_Masala">Bhindi Masala</option>
										<option value="Baingan_Bharta">Baingan Bharta</option>
										<option value="Aloo_Gobi">Aloo Gobi</option>
										<option value="Patta_Gobhi_Matar">Patta Gobhi Matar</option>


								</select></td>
							</tr>
<tr>
								<td  colspan="2" align="center"><label for="txt_Uname"
									style="color: Red; font-size: 18px;">Select
										Dinner Sabzi:</label></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Sabzi:</label></td>
								<td><select class="form-control" name="dtxtsabzi1" required>
										<option value="null">----Select ----</option>
										<option value="Malai_kofta">Malai kofta</option>
										<option value="Palak_Paneer">Palak Paneer</option>
										<option value="Rajma">Rajma</option>
										<option value="Mutter_Paneer">Mutter Paneer</option>
										<option value="Chole">Chole</option>
										<option value="Pav_Bhaji">Pav Bhaji</option>
										<option value="Bhindi_Masala">Bhindi Masala</option>
										<option value="Baingan_Bharta">Baingan Bharta</option>
										<option value="Aloo_Gobi">Aloo Gobi</option>
										<option value="Patta_Gobhi_Matar">Patta Gobhi Matar</option>


								</select></td>
							</tr>
							<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Sabzi:</label></td>
								<td><select class="form-control" name="dtxtsabzi2" required>
										<option value="null">----Select ----</option>
										<option value="Tamater_Aloo">Tamater Aloo</option>
										<option value="Masoor_Dal">Masoor Dal</option>
										<option value="Patta_Gobhi">Patta Gobhi</option>
										<option value="Mix_Dal">Mix Dal</option>
										<option value="Methi_Aloo">Methi Aloo</option>
										<option value="Dal_Tadka">Dal Tadka</option>
										<option value="Mataki">Mataki</option>


								</select></td>
							</tr>
							<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Roti:</label></td>

								<td align=left><input type="radio" name="roti"
									value="2(Roti)" id="roti1" required /><label for="txt_Uname"
									style="color: White; font-size: 18px;">2(Roti)</label> <input
									type="radio" name="roti" value="3(Roti)" id="roti3"
									required /><label for="txt_Uname"
									style="color: White; font-size: 18px;">3(Roti)</label></td>
							</tr>
							<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
								<td  colspan="2" align="center"><label for="txt_Uname"
									style="color: Red; font-size: 18px;">Select
										Rice:</label></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Rice:</label></td>
								<td><select class="form-control" name="txtrice" required>
										<option value="null">----Select ----</option>
										<option value="Plain_Rice">Plain Rice</option>
										<option value="Jeera_Rice">Jeera Rice</option>
										<option value="Pulao">Pulao</option>
										<option value="Dal_Rice">Dal Rice</option>
										


								</select></td>
							</tr>
							<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Achar:</label></td>

								<td align=left><input type="radio" name="Achar"
									value="Achar" id="roti1" required /><label for="txt_Uname"
									style="color: White; font-size: 18px;">Yes(Achar)</label> <input
									type="radio" name="Achar" value="No" id="Achar3"
									required /><label for="txt_Uname"
									style="color: White; font-size: 18px;">No(Achar)</label></td>
							</tr>
							<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
								<td class="lable"><label for="txt_Uname"
									style="color: White; font-size: 18px;">Select Papad:</label></td>
								<td><select class="form-control" name="txtpapad" required>
										<option value="null">----Select ----</option>
										<option value="Plain_Papad">Plain Papad</option>
										<option value="Masala_Papad">Masala Papad</option>
										<option value="No_Papad">No Papad</option>
										
								</select></td>
							</tr>
							<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
									<td class="lable"><label for="txt_Uname" style="color:White;font-size:18px;">Lunch Price:</label></td>
									<td><input type="number" required 
										name="txtlunchprice" class="form-control"/></td>
								</tr>
								<tr>
								<td colspan="2" ><br></td>
								
							</tr>
							<tr>
									<td class="lable"><label for="txt_Uname" style="color:White;font-size:18px;">Dinner Price:</label></td>
									<td><input type="number" required 
										name="txtdinnerprice" class="form-control" /></td>
								</tr>
							<tr>
								<td class="col-md-6" colspan="2" align="center"><input
									type="submit" class="btn btn-primary" name="btn_Submit"
									id="btn_Submit" Value="Save"></td>
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
	<p class="col-lg-8 col-sm-12 footer-text m-0">
		Copyright &copy;
		<script>
			document.write(new Date().getFullYear());
		</script>
		All rights reserved | This template is made with <i
			class="fa fa-heart-o" aria-hidden="true"></i> by <a
			href="https://colorlib.com" target="_blank">Colorlib</a>
	</p>

	</footer>
	<!-- End footer Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
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