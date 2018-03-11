
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
		
    
       

				  %>
  
	<div id="Container" style="width:1330px;">
<div id="Header">
<div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
<% 	 String uname=request.getParameter("name");
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
				out.println("<a class=topic ><h4>Messages</h4></a>");
				out.println(" <a class=topics href=send.jsp?name="+uname+">Compose</a><br>");
out.println(" <a class=topics href=delpost.jsp?name="+uname+">Delete</a><br>");
              out.println("<a class=topics href=sent.jsp?name="+uname+">Sent messages</a><br>");

			%>
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        <h2 class="blog-title">Communicate</h2>
        <p class="lead blog-description">Portal of communication.</p>
		



		<form name="sendd" method="post" action="">
<a class="topic" href="#"><h4>Sent Messages</h4></a>
     
	 
	   <%
	           try {
				
				   Boolean b;
              Class.forName("com.mysql.jdbc.Driver");
			      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+uname,"root","");
				  Statement stmt=con.createStatement();
			
	ResultSet rs=stmt.executeQuery("select * from sent");
	b=rs.next();
		if(b==false)
			out.println("No records found");
		else
		{
			out.println("<html>");
			out.println("<p>");
			
			
			while(b)
			{
			out.println("<p class=blog-post-meta>To:"+ rs.getString("t")+"</p>");
			out.println("Message:&nbsp &nbsp &nbsp &nbsp &nbsp"+rs.getString("m"));
			out.println("</p><hr>");
			b=rs.next();
			}
			
			out.println("</html>");
		}
				  con.close();
		}
		catch(Exception e)
		{
				e.toString();
		}%>

	 </div>
	  </div>

  </body>
</html>