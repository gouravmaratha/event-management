<%@include file="db.jsp" %>
<%
String email=(String) session.getAttribute("email");
String opwd=request.getParameter("opwd");
String npwd1=request.getParameter("npwd1");
String npwd2=request.getParameter("npwd2");
int otp= (Integer) session.getAttribute("otp");
String otpvalue=request.getParameter("otpvalue");
int enterOtp=Integer.parseInt(otpvalue);
if(otp==enterOtp)
{	
	if(npwd1.equals(npwd2))
	{
		String qr="select * from customer where email=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, email);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			String pwd=rs.getString("pwd");
			if(pwd.equals(opwd))
			{
				String qr1="update customer set pwd=? where email=?";
				PreparedStatement ps1=con.prepareStatement(qr1);
				ps1.setString(1, npwd1);
				ps1.setString(2, email);
				int i=ps1.executeUpdate();
				if(i>0)
				{
					RequestDispatcher rd=request.getRequestDispatcher("clog.jsp");
					rd.include(request, response);
					%><script>window.alert("Password Changed Successfully");</script><%
				}
				else{
					RequestDispatcher rd=request.getRequestDispatcher("detail.jsp");
					rd.include(request, response);
					%><script>window.alert("Cannot Change the Password");</script><%
				}
			}
			else{
				RequestDispatcher rd1=request.getRequestDispatcher("updpass2.jsp");
				rd1.include(request, response);
				%><script>window.alert("Your Old Password is Incorrect");</script><%
			}
		}
		else{
			RequestDispatcher rd2=request.getRequestDispatcher("updpass2.jsp");
			rd2.include(request, response);
			%><script>window.alert("Your Email Does not Exist");</script><%
		}
	}
	else{
		RequestDispatcher rd3=request.getRequestDispatcher("updpass2.jsp");
		rd3.include(request, response);
		%><script>window.alert("New Password Does not match");</script><%
	}
}
else{
	RequestDispatcher rd4=request.getRequestDispatcher("updpass2.jsp");
	rd4.include(request, response);
	%><script>window.alert("Otp You Entered is Incorrect");</script><%
}
%>