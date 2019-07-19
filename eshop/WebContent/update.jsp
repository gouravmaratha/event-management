<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="updateproduct.jsp" >
<table align="center" border="11" cellspacing="50%" cellpadding="50%">
<tr><th><h1>name</h1></th><td><input type="text" name="name" required></td></tr>
<tr><th><h1>price</h1></th><td><input type="number" name="price" required></td></tr>
<tr><th><h1>category</h1></th><td><input type="text" name="category" required></td></tr>
<tr><th><h1>company</h1></th><td><input type="text" name="company" required></td></tr>
<tr><th><input type="submit" name="add"></th></tr>
</table>
</form>
</body>
</html>