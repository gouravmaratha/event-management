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
		String v_name=request.getParameter("v_name");
		String qr="delete from venue where v_name=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, v_name);
		int i=ps.executeUpdate();
		if(i>0){
			RequestDispatcher rd=request.getRequestDispatcher("cview_venue.jsp");
			rd.include(request, response);
			%><script>window.alert("Venue Removed!!!");</script><%
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("cview_venue.jsp");
			rd.include(request, response);
			%><script>window.alert("Server Error..");</script><%
		}
	%>
</body>
</html>