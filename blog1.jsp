
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>FIERA</title>
    <link href="blog.css" rel="stylesheet">
  </head>
  <body>
  

	    <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
          <%
        Connection con = null;
	PreparedStatement ps=null;
	PreparedStatement pt,po=null;
		
         String uname = request.getParameter("name");
        String topic = request.getParameter("topic");
		String thou=request.getParameter("thou");
        try {
              Class.forName("com.mysql.jdbc.Driver");
			     
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
	PreparedStatement p1,p2,p3=null;
p1=con.prepareStatement("insert into "+topic+" values(?,?)");
p1.setString(1,uname);
p1.setString(2,thou);
p1.executeUpdate();

con.close();
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+uname,"root","");
p1=con.prepareStatement("insert into post values(?,?)");
	p1.setString(1,topic);
	p1.setString(2,thou);
	
	
p1.executeUpdate();

con.close();
		
        } catch (Exception e) {e.toString(); }

%>

	<div id="Container" style="width:1330px;">
<div id="Header">
<div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
	<% 	  


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
				 out.println("<a class=topic ><h4>Topics</h4></a>");
               out.println("<a class=topics href=india.jsp?name="+uname+">India</a><br>");
              out.println(" <a class=topics href=sci.jsp?name="+uname+">Science</a><br>");
			  out.println(" <a class=topics href=cul.jsp?name="+uname+">Culture</a><br>");
			 out.println(" <a class=topics href=tech.jsp?name="+uname+">Technology</a><br>");
             out.println("  <a class=topics href=spa.jsp?name="+uname+">Space</a><br>");
			 out.println("	<a class=topics href=pol.jsp?name="+uname+">Politics</a><br>");
				 out.println("        <a class=topics href=edu.jsp?name="+uname+">Education</a><br>");
				 %>
			
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        <h1 class="blog-title">Blog</h1>
	<%	out.println("<form method=post action=blog1.jsp?name="+uname+">");
 %>       <p class="lead blog-description">Share your Thoughts.</p>
			<table align="center">
			<tr>
			<td><Br>Topic</td>
			<td><Br><input type="textbox" name="topic" required></td>
			</tr>
			
			
			<tr>
			<td><Br>Thought</td>
			<td><br><textarea name="thou" required></textarea></td>
			</tr>
			<br><Br></table><center>
			<input type="submit" value="Post">
			</center>
		</form>
      </div>
	  </div>
	  

	  
	  
	  
	  
	  


 </body>
</html> 
 
 
 
 
 