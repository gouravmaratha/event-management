<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String d=(String)session.getAttribute("k1");%>
<h1 align="center">welcome <%=d %></h1>
<h1 align="center">welcome to home page</h1>
<table>
<a href="add.jsp"><h1 align="center">add products</h1></a>
<a href="delete.jsp"><h1 align="center"> delete products</h1></a>

<a href="update.jsp"><h1 align="center">update products</h1></a>

<a href="view.jsp"><h1 align="center">view products</h1></a>

</table>
</body>
</html>