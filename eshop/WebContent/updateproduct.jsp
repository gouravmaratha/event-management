
<%@ page import="java.sql.*"%>
<%
String q=request.getParameter("name");
String w=request.getParameter("price");
String t=request.getParameter("category");
String u=request.getParameter("company");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","12345");
PreparedStatement ps=con.prepareStatement("update product set price=?,category=?,campany=? where name=?");
ps.setString(4,q);
ps.setString(1,w);
ps.setString(2,t);
ps.setString(3,u);
ps.executeUpdate();
con.close();
//response.sendRedirect("view.jsp");
RequestDispatcher rd=request.getRequestDispatcher("view.jsp");
rd.include(request,response);%>
<h1 align="center"><%=q%> product updated</h1>	


