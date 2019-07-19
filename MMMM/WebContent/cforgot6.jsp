<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@
    include file="db.jsp"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String email=request.getParameter("email");
		String pwd1=request.getParameter("pwd1");
		String pwd2=request.getParameter("pwd2");
		if(pwd1.equals(pwd2))
		{
			String qr="update customer set pwd=? where email=?";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1, pwd1);	
			ps.setString(2, email);
			int i=ps.executeUpdate();
			if(i>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("clog.jsp");
				rd.include(request, response);
				%><script>window.alert('Password changed successfully please login again');</script><%
			}
			else{
				RequestDispatcher rd1=request.getRequestDispatcher("clog.jsp");
				rd1.include(request, response);
				%><script>window.alert('Server Error !!!');</script><%
			}
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("cforgot5.jsp");
			rd.include(request, response);
			%><script>window.alert('Password not Matched');</script><%
		}
	%>
</body>
</html>