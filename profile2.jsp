
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>FIERA</title>
    <link href="blog.css" rel="stylesheet">
  </head>
  <body>
  
  
  
   
 	 
	<div id="Container" style="width:1330px;">
<div id="Header">
<div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
		<% 
  String uname = request.getParameter("name");
		out.println(" <a class=blog-nav-item href=index.jsp?name="+uname+" >Home</a>");
         out.println("<a class= blog-nav-item href= blog1.jsp?name="+uname+" >Blog</a>");
			 out.println("<a class=blog-nav-item href=profile.jsp?name="+uname+" >My Profile</a>");
          out.println(" <a class=blog-nav-item href=inbox.jsp?name="+uname+" >Inbox</a>");
          out.println(" <a class=blog-nav-item href=send.jsp?name="+uname+" >Send Message</a>");
		  out.println("<a class=blog-nav-item href=contact.jsp?name="+uname+" >Contact</a>");
		  %>
			<a class="blog-nav-item1" href="login.html" style="position:right;">Signout</a>
        </nav>
      </div>
    </div>
</div>

<div id="Menu" style="font-color:black;text-align:center; width:275px; float:left;">
   
            
            <center>
				<br><br><br>
				<%
				out.println("<a class=topic ><h4>My Profile</h4></a>");
				%>

              <a class="topics" href="edit.html">Edit</a><br>
              <a class="topics" href="del.html">Delete my account</a><br>
            
			
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        <h1 class="blog-title">Information</h1>
     &nbsp &nbsp &nbsp &nbsp &nbsp <table align="center";><b>
			
			
		
		  <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
          <%
        Connection con = null;
	PreparedStatement ps=null;
	PreparedStatement pt,po=null;
		Boolean b;
       
       
        try {
              Class.forName("com.mysql.jdbc.Driver");
		      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
				 out.println("connection");
		Statement stmt=con.createStatement();
			out.println("outside while");
	ResultSet rs=stmt.executeQuery("select * from blogusers where uname="+uname);
	b=rs.next();

		if(b==false)
			out.println("No records found");
		else
		{
		
			out.println("<html>");
			out.println("<p>");
	
		while(b)
		{
			out.println("<tr>");
			out.println("<td><Br>Username</td>");
			out.println("<td><br>"+rs.getString("name")+"</td>");
			out.println("</tr>");
			out.println("<br><Br>");
	
			
			out.println("<tr>");
			out.println("<td><br>Password</td>");
				out.println("<td><br>"+rs.getString("name")+"</td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td><br>Age</td>");
				out.println("<td><br>"+rs.getString("age")+"</td>");
			out.println("</tr>");
			
			
			out.println("<tr>");
			out.println("<td><Br>Email</td>");
				out.println("<td><br>"+rs.getString("email")+"</td>");
			out.println("</tr>");
			
			
			out.println("<tr>");
			out.println("<td><Br>Contact</td>");
	out.println("<td><br>"+rs.getString("no")+"</td>");
			out.println("</tr>");
			b=rs.next();
		}}
		  con.close();
		}
		catch(Exception e)
		{
				e.toString();
		}
	%>
      </div>
	  </div>



  </body>
</html>