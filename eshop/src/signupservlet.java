


import java.io.IOException;  

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/p")
public class signupservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String q=request.getParameter("id");
		String w=request.getParameter("password");
				String o=request.getParameter("name");
						String r=request.getParameter("city");
								String t=request.getParameter("gender");
										String u=request.getParameter("age");
										try{

											Class.forName("com.mysql.jdbc.Driver");
										Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","12345");
										PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
										ps.setString(1,q);
										ps.setString(2,w);
										ps.setString(3,o);
										ps.setString(4,r);
										ps.setString(5,t);
										ps.setString(6,u);
										int x=0;
										x=ps.executeUpdate();
										if(x!=0)
										{	response.sendRedirect("login.html");
										}
										else
										{	out.println("data not inserted");
										}


										}
										catch(Exception e)
										{ 	out.println(e);
										}					
	}

}
