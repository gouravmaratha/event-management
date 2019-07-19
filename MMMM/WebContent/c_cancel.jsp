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
		String id=request.getParameter("bid");
		int bid=Integer.parseInt(id);
		String qr="delete from book where bid=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setInt(1, bid);
		int i=ps.executeUpdate();
		if(i>0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("book_hstry.jsp");
			rd.include(request, response);
			%><script>window.alert('Your Booking is Cancelled');</script><%
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("book_hstry.jsp");
			rd.include(request, response);	
			%><script>window.alert('Server error...Please try Later!!!!');</script><%
		}
	%>
</body>
</html>