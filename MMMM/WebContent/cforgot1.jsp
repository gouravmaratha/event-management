<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%> 
<%@page import=" java.net.URLEncoder"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String email=request.getParameter("email");
	String qr="select * from customer where email=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, email);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		Random rand = new Random();
		int otp = rand.nextInt(900000) + 100000;
		session.setAttribute("otp",otp);
		out.println(otp);
		response.sendRedirect("cforgot2.jsp?email="+email+"");	
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("clog.jsp");
		rd.include(request, response);
		%><script>window.alert('This Email does not exist!!');</script><%
	}
%>
</body>
</html>