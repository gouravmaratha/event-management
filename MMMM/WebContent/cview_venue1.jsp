<%@include file="db.jsp"%>
<html>
<head>
<title> </title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon1.jpg"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
<%  
String v_type=request.getParameter("val");
if(v_type==null||v_type.trim().equals("")){  
  
}else{  
	String qr="select * from venue where v_type=? or v_type='all'";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, v_type);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{ 
		%>
		<div class="wrap-table-shopping-cart">
		<br><br>
		<table class="table-shopping-cart" style="margin: 0px 250px;">
		<tr class="table_head">
			<th class="column-1"></th>
		    <th class="column-2">Name</th>
			<th class="column-3">Address</th>
			<th class="column-4">Number</th>
			<th class="column-5">Capacity</th>
			<th class="column-6">Amount</th>
		</tr>
		<% 
			do{
				String v_name=rs.getString("v_name");
				String v_address=rs.getString("v_address");
				String v_number=rs.getString("v_number");
				String v_capacity=rs.getString("v_capacity");
				String amount=rs.getString("amount");
				String fileName=rs.getString("fileName");
				%>				
								<tr class="table_row">
									<td class="column-1">
										<div class="">
											<img src="<%=fileName%>" alt="IMG" style="height: 110px; width: 100px;">
										</div>
									</td>
									<td class="column-2"><%=v_name%></td>
									<td class="column-3"><%=v_address%></td>
									<td class="column-4"><%=v_number%></td>
									<td class="column-5"><%=v_capacity%></td>
									<td class="column-6"><%=amount%></td>
								</tr>		
				<%
			}while(rs.next());
		%></table>
		</div>		<%
	}
	else{
		%>
		<input type="hidden" value="No Gardens or Place is found">
		<%
	}
	con.close();
}
%>
</body>
</html>

