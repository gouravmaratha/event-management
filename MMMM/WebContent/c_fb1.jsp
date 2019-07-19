<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="db.jsp" %>
    <%@page import="java.time.format.DateTimeFormatter" %>
    <%@page import="java.time.LocalDateTime" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String fb=request.getParameter("fb");
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");  
	   	LocalDateTime now = LocalDateTime.now();  
	   	String date=dtf.format(now);
	   	String email=(String) session.getAttribute("email");
	   	String qr="insert into feedback values(?,?,?)";
	   	PreparedStatement ps=con.prepareStatement(qr);
	   	ps.setString(1, email);
	   	ps.setString(2, date);
	   	ps.setString(3, fb);
	   	int i=ps.executeUpdate();
	   	if(i>0)
	   	{
	   		RequestDispatcher rd=request.getRequestDispatcher("chome.jsp");
			rd.include(request, response);
			%><script>window.alert("feedback is Successfully submitted");</script><%
	   	}
	   	else{
	   		RequestDispatcher rd=request.getRequestDispatcher("chome.jsp");
			rd.include(request, response);
			%><script>window.alert("feedback is Not submitted");</script><%
	   	}
	%>
</body>
</html>