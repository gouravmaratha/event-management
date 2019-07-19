<%
String id=request.getParameter("id");
String password=request.getParameter("password");
if(id.equals("gourav")&&password.equals("123456789"))
{	response.sendRedirect("home.jsp");
session.setAttribute("k1", id);
	
}
else
{	RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
rd.include(request, response);
out.println("<h1 align='center'>invalid id/pass</h1>");
		
}

%>
