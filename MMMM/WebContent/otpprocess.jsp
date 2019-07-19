<%@include file="db.jsp" %>
<%
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
String number=(String)session.getAttribute("number");
String address=(String)session.getAttribute("address");
String pwd=(String)session.getAttribute("pwd");
//int otp= (Integer) session.getAttribute("otp");
//String otpvalue=request.getParameter("otpvalue");
//int enterOtp=Integer.parseInt(otpvalue);
	
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
		%><script>window.alert("Registeration is Successfull");</script><%
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("clog.jsp");
		rd.include(request, response);
		%><script>window.alert("Registeration is Unsuccessfull !!!");</script><%
	}

%>