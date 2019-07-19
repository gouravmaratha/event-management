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
String price=request.getParameter("price");
String category=request.getParameter("category");
String company=request.getParameter("campany");

%>
<form action="updateproduct.jsp">
<tr><th>name<%=name %></th></tr>
<tr><th>name<input type="hidden" name="name" value=<%=name %>>
price<input type="text" name="price" value=<%=price %>>
category<input type="text" name="category" value=<%=category %>>
company<input type="text" name="company" value=<%=company %>>
<input type="submit" name="submit" >

</form>


</body>
</html>