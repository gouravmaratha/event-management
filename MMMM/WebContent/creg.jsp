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
		String number=request.getParameter("number");
		String address=request.getParameter("address");
		String pwd=request.getParameter("pwd");
		String pwd1=request.getParameter("pwd1");
		if(pwd.equals(pwd1))
		{
			String qr="insert into customer values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, number);
			ps.setString(4, address);
			ps.setString(5, pwd);
			int i=ps.executeUpdate();
			if(i>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("clog.jsp");
				rd.include(request, response);
				%><script>window.alert("Registered Successfull");</script><%
			}
			else{
				RequestDispatcher rd=request.getRequestDispatcher("clog.jsp");
				rd.include(request, response);
				%><script>window.alert("Register Unsuccessfull !!!");</script><%
			}
		}
		else{
			RequestDispatcher rd1=request.getRequestDispatcher("reg.jsp");
			rd1.include(request, response);
			%><script>window.alert("Password doesn't match !!!");</script><%
		}
	%>
</body>
</html>