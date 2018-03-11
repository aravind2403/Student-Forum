
  
  
   
  <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
          <%
        Connection con = null;
	PreparedStatement ps=null;
	PreparedStatement pt,po=null;
						
				Boolean b;
		
       	String uname=request.getParameter("uname");
				String pass=request.getParameter("pwd");
				out.println(uname);
				out.println(pass);
				Integer i;
				        try {
              Class.forName("com.mysql.jdbc.Driver");
			     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");
				  out.println("conn");
				 			
		Statement stmt=con.createStatement();
	
			
	ResultSet rs=stmt.executeQuery("select name from signup where name like '"+uname+"'");
	b=rs.next();
	if((rs.getString(1).equals(uname))&&(rs.getString(3).equals(pass)))
				response.sendRedirect("display.html");
	
		else
			response.sendRedirect("stafflogin1.html");
				  con.close();
						}
							catch(Exception e)
							{
									e.toString();
							}
%>
  
