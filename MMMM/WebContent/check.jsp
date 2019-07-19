<%@ page import="java.sql.*"%>
<%  
String email=request.getParameter("email");
if(email==null||email.trim().equals("")){  
  
}else{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv_event","root","12345"); 
	String qr="select email from customer where email=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, email);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		%><p style="color: red; font-weight: bold;">Email already taken!!!</p><%
	}
	else{
		%><p style="color: green; font-weight: bold;">Email available</p><%
	}
}
%>