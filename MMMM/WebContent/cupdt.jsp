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
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String number=request.getParameter("number");
		String qr="update customer set name=?,email=?,number=?,address=? where email=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, number);
		ps.setString(4, address);
		ps.setString(5, email);
		int i=ps.executeUpdate();
		if(i>0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("chome.jsp");
			rd.include(request, response);
			%><script>window.alert("Details Updated Successfully");</script><%
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("chome.jsp");
			rd.include(request, response);
			%><script>window.alert("Cannot Update Your Details");</script><%
		}
	%>
</body>
</html>