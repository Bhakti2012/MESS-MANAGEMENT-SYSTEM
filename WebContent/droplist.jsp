<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.Dbconn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form role="form" action="AddProduct" method="post">
		
			<table class="table table-responsive table-bordered" >
	      
		
		    <tr>
			<td class="col-md-2"><label for="txt_Pname" style="color:White;font-size:18px;">Product Name:</label></td>
			<td class="col-md-6">
			
			<select class="form-control" name="txt_Pname" required onblur="this.event()">
 							<option value="null">----Select ----</option>
            <%
            Connection conn=Dbconn.conn();
            Statement st=conn.createStatement();
            String d=null;
            ResultSet rs=st.executeQuery("SELECT * FROM tblitemsetdata ");
            while(rs.next())
            {
            %>
            <option value=<%=rs.getString(2) %>><%=rs.getString(2) %></option>
            
			<%
            }
           
			%>
			</select>
			
			
			</tr>
			
			<tr>
			<td class="col-md-2"><label for="txt_Pquantity" style="color:White;font-size:18px;">Quantity</label></td>
			<td class="col-md-6"><input type="text" class="form-control" name="txt_Pquantity" required id="txt_Pquantity" placeholder="Enter Quantity"></td>
			</tr>
			
		    <tr>
			<td class="col-md-2"><label for="txt_Pdescription" style="color:White;font-size:18px;">Product Description:</label></td>
			<td class="col-md-6"><textarea class="form-control" name="txt_Pdescription" required id="txt_Pdescription" placeholder="Enter Product Description"></textarea></td>
			</tr>
			 <tr>
			<td class="col-md-2"><label for="txt_Pprice" style="color:White;font-size:18px;">Price</label></td>
			<td class="col-md-6"><input type="text" class="form-control" name="txt_Pprice" required id="txt_Pprice" placeholder="Enter Price"></td>
			</tr>
			 
			 <tr>
			<td class="col-md-2"><label for="txt_Pmanufacture" style="color:White;font-size:18px;">Manufacture Date</label></td>
			<td class="col-md-6">
			
			<input type="date" class="form-control" name="txt_Pmanufacture" placeholder="Starting Date">
			
				</tr>
			 <tr>
			  <tr>
			<td class="col-md-2"><label for="txt_Pexpiry" style="color:White;font-size:18px;">Expiry Date</label></td>
			<td class="col-md-6">
			<input type="date" class="form-control" name="txt_Pexpiry" placeholder="Expiry Date">
			</tr>
			<tr>
			<td class="col-md-2"><label for="txt_Pprice" style="color:White;font-size:18px;">Co-ItemSetID</label></td>
			<td class="col-md-6"><input type="text" class="form-control" name="txt_coitem" required id="txt_Pprice" placeholder="Enter Co-Item for Ex.1,2,3,4"></td>
			</tr>
			<tr>
			<td class="col-md-6" colspan="2" align="center" ><input type="submit" class="btn btn-primary" name="btn_Submit" id="btn_Submit" Value="Add Product"></td>
			</tr>
			</table>
			</form>
</body>
</html>