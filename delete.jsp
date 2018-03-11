
 <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
          <%
        Connection con = null;
	PreparedStatement ps=null;
	PreparedStatement pt,po=null;
	String uname=request.getParameter("name");
	  try {
              Class.forName("com.mysql.jdbc.Driver");
			      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");
            out.println(uname);
			ps=con.prepareStatement("drop database "+uname);
			ps.executeUpdate();
			
			out.println("databse deleted");
			
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
           
			ps=con.prepareStatement("delete from blogusers where uname like '"+uname+"'");
			ps.executeUpdate();
			
			out.println("databse deleted");
			response.sendRedirect("login.html");
	  }
	  catch(Exception e)
	  {e.toString();}
	  %>