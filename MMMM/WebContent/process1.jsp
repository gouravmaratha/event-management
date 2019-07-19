<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%> 
<%@page import=" java.net.URLEncoder"%>
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
String name=request.getParameter("name");
String email=request.getParameter("email");
String number=request.getParameter("number");
String address=request.getParameter("address");
String pwd=request.getParameter("pwd");
String pwd1=request.getParameter("pwd1");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
session.setAttribute("name", name); 
session.setAttribute("email", email);
session.setAttribute("number", number);
session.setAttribute("address", address);
session.setAttribute("pwd", pwd);
if(pwd.equals(pwd1) && pass1.equals(pass2))
{
	String mobiles = number;
	Random rand = new Random();
	int otp = rand.nextInt(900000) + 100000;
	session.setAttribute("otp",otp);
	response.sendRedirect("gourav.jsp");
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("reg.jsp");
	rd.include(request, response);
	%><script>window.alert("Password or reCaptcha Doesn't matches !!");</script><%
}
%>
</body>
</html>