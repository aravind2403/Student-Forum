
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
       
        try {
              Class.forName("com.mysql.jdbc.Driver");
			      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+uname,"root","");
				  
				  con.close();
		}
		catch(Exception e)
		{}
				  %>
	<div id="Container" style="width:1330px;">
<div id="Header">
<div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
		<% 	  out.println(" <a class=blog-nav-item href=index.jsp?name="+uname+" >Home</a>");
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
			 <% 	    out.println("<a class=topic><h4>Contact</h4></a>");
             out.println("<a class=topics href=contact.jsp?name="+uname+">Founders</a><br>");
                 out.println(" <a class=topics href=develop.jsp?="+uname+">Developers</a><br>");
%>
			
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        <h1 class="blog-title">Founders</h1><br><br>
        <p class="desc"> The Founders are under great privilege to give a blog to the world that helps every individual to share his own thoughts on everything.			
		
			<br><br>Phone no: &nbsp &nbsp &nbsp &nbsp &nbsp  +919677896429<br>
			 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp	&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp +918754517432
			<br><br>
			Email us:
		 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp aravindsamy2403@gmail.com
				<br>
			 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp	&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp charanyapsc@gmail.com
		
		</p>
      </div>
	  </div>

  </body>
</html>