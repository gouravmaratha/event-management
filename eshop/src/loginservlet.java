
import java.io.IOException; 
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

@WebServlet("/ls")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String q=request.getParameter("email id");
		String w=request.getParameter("password");
						try{

											Class.forName("com.mysql.jdbc.Driver");
										Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","12345");
										PreparedStatement ps=con.prepareStatement("select* from user where id=? and password=?");
										ps.setString(1,q);
										ps.setString(2,w);
									
										ResultSet rs=ps.executeQuery();
										if(rs.next())
										{	
											HttpSession s=request.getSession();
											s.setAttribute("k1",q);
											response.sendRedirect("home.html");
										}
										else
										{	out.println("<h1 align='center'>invalid password/id</h1>");
											out.println("<a href='login.html' align='center'><h1> please try again</h1></a>");
											
										}
										}


									
										catch(Exception e)
										{ 	e.printStackTrace();
										}
			
						}
	}

	


