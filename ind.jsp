
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
		  <a class="blog-nav-item" href="index.html">Home</a>
          <a class="blog-nav-item" href="blog.html">Blog</a>
          <a class="blog-nav-item" href="profile.html">My Profile</a>
          <a class="blog-nav-item" href="inbox.html">Inbox</a>
          <a class="blog-nav-item" href="send.html">Send Message</a>
          <a class="blog-nav-item" href="contact.html">Contact</a>
			<a class="blog-nav-item1" href="main.html" style="position:right;">Signout</a>
        </nav>
      </div>
    </div>
</div>

<div id="Menu" style="font-color:black;text-align:center; width:275px; float:left;">
   
            
            <center>
				<br><br><br>
				<a class="topic" href="#"><h4>Topics</h4></a>
              <a class="topics" href="india.html">India</a><br>
              <a class="topics" href="sci.html">Science</a><br>
			  <a class="topics" href="cul.html">Culture</a><br>
			 <a class="topics" href="tech.html">Technology</a><br>
              <a class="topics" href="spa.html">Space</a><br>
				<a class="topics" href="pol.html">Politics</a><br>
				        <a class="topics" href="edu.html">Education</a><br>
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        <h1 class="blog-title">India</h1>
        <p class="lead blog-description"></p>
			
			
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%
	Connection con = null;
	ResultSet rs;
	boolean b;
	try
	{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","aravind");
	Statement stmt=con.createStatement();
	rs=stmt.executeQuery("select * from newt");
	b=rs.next();
		if(b==false)
			out.println("No records found");
		else
		{
			out.println("<html>");
			out.println("<table border>");
			out.println("<tr>");
			out.println("<th> Thief id </th>");
			out.println("<th> Thief name </th>");
			out.println("<th> Area </th>");
			out.println("<th> Category </th>");
			out.println("</tr>");
			while(b)
			{
			out.println("<tr>");
			out.println("<td>"+ rs.getString("id")+"</td>");
			out.println("<td>"+ rs.getString("name")+"</td>");
			out.println("<td>"+ rs.getString("area")+"</td>");
			out.println("<td>"+ rs.getString("category")+"</td>");
			out.println("</tr>");
			b=rs.next();
			}
			out.println("</table>");
			out.println("</html>");
		}
	}	
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
      
	  
	  
	  </div>
	  </div>
 </body>
</html>