<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">product list</h1>
<table align="center" border="11" cellspacing="20%" cellpadding="20%">
	
<%@include file="db.jsp" %>
<tr>
	<th><h3 style="color:red">name</h3></th>
	<th><h3 style="color:red">price</h3></th>
	<th><h3 style="color:red">category</h3></th>
	<th><h3 style="color:red">campany</h3></th>
	<th><h3 style="color:red">operations</h3></th>
	</tr>
	<hr></hr>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from product");
if(rs.next())
{	do
	{	
	
	String name=rs.getString("name");
	String  price=	rs.getString("price");
	String category=rs.getString("category");
	String campany=rs.getString("campany");
%>
	<tr>
	<td><%=name %></td>
	<td><%=price %></td>
	<td><%=category %></td>
	<td><%=campany%></td>
	<td><a href="deleteproduct.jsp?name=<%=name %>">delete</a>
	<a href="up.jsp?name=<%=name%>&price=<%=price%>&category=<%=category%>&campany=<%=campany%>">update</a></td>
	</tr>
	<% 
	}
	while(rs.next());

	}
else
{	out.println("not found");}

%>
</table>
</body>
</html>