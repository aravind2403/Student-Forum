
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
<%String uname=request.getParameter("name") ;
	
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
        <h1 class="blog-title">Culture</h1>
        <p class="lead blog-description">The Perfect place for all the divergent minds.</p>
			
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
          <%
        Connection con = null;
	PreparedStatement ps=null;

boolean b;
        try {
              Class.forName("com.mysql.jdbc.Driver");
			      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from culture");
	b=rs.next();
		if(b==false)
			out.println("No records found");
		else
		{
			out.println("<html>");
			out.println("<p>");
			
			
			while(b)
			{
			out.println("<p class=topicc>Posted by</p>");
			out.println("<p class=blog-post-meta>"+ rs.getString("from")+"</p>");
			
			out.println("&nbsp &nbsp &nbsp &nbsp &nbsp"+rs.getString("msg"));
			out.println("</p><hr>");
			b=rs.next();
			}
			
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