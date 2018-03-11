
  
  
   
  <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
          <%
        Connection con = null;
	PreparedStatement ps=null;
	PreparedStatement pt,po=null;
						
				Boolean b;
		
       	String uname=request.getParameter("name");
				String pass=request.getParameter("pass");
				out.println(uname);
				out.println(pass);
				Integer i;
				        try {
              Class.forName("com.mysql.jdbc.Driver");
			     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
				  out.println("conn");
				 			
		Statement stmt=con.createStatement();
	
			
	ResultSet rs=stmt.executeQuery("select uname from blogusers where uname like '"+uname+"'");
	b=rs.next();
	if(rs.getString(1).equals(uname))
			response.sendRedirect("index.jsp?name="+uname);
		else
			response.sendRedirect("login.html");
				  con.close();
						}
							catch(Exception e)
							{
									e.toString();
							}
%>
  
