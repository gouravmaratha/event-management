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
	int otp= (Integer) session.getAttribute("otp");
	String otpvalue=request.getParameter("otpvalue");
	String email=request.getParameter("email");
	int enterOtp=Integer.parseInt(otpvalue);
	if(enterOtp==otp)
	{
		response.sendRedirect("cforgot5.jsp?email="+email+" ");
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("cforgot3.jsp");
		rd.include(request, response);
		%><script>window.alert('Incorrect OTP!!!');</script><%
	}
%>
</body>
</html>