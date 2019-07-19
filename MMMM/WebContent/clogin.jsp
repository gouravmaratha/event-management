<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String qr="select * from customer where email=? and pwd=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, email);
		ps.setString(2, pwd);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			session.setAttribute("email", email);
			response.sendRedirect("chome.jsp");		
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("clog.jsp");
			rd.include(request, response);
			%><script>window.alert("Incorrect Email or Password");</script><%
		}
	%>
</body>
</html>