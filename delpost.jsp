
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
		
		String uname=request.getParameter("name");
	
	Boolean b;
        try {
              Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/"+uname;
	con = DriverManager.getConnection(url,"root","");
String to1=request.getParameter("t");
String msg1=request.getParameter("m");

ps=con.prepareStatement("delete from post where t like '"+to1+"' and m like '"+msg1+"'");
ps.executeUpdate();

		con.close();}
		catch(Exception e)
		{
			e.toString();
		}
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
				out.println("<a class=topic ><h4>Messages</h4></a>");
				out.println("<a class=topics href=send.jsp?name="+uname+">Send</a><br>");
				out.println(" <a class=topics href=delinbox.jsp?name="+uname+">DeleteInbox</a><br>");
             out.println("<a class=topics href=delpost.jsp?name="+uname+">DeletePosts</a><br>");
              out.println("<a class=topics href=delsent.jsp?name="+uname+">DelSentmsgs</a><br>");
				out.println("<form method=post action=delpost.jsp?name="+uname+">");
				%>
				<br><br>
				To:
			<input type=text name="t">
			<br><br>
			Msg:
			<input type=text name="m">
				<br>
				<input type=submit>
			</form>
		
		
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        


<%
	out.println("<form method=post action=send.jsp?name="+uname+">");
%>
	    
          <%
      
		
        try {
              Class.forName("com.mysql.jdbc.Driver");
         
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+uname,"root","");


Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from post");

	b=rs.next();
	if(b==false)
			out.println("No records found");
		else
		{
			out.println("<html>");
			out.println("<p>");
			
			
			while(b)
			{
			out.println("<p class=topicc>User:</p>");
			out.println("<p class=blog-post-meta>"+ rs.getString("t")+"</p>");
			
			out.println("Message:&nbsp &nbsp &nbsp &nbsp &nbsp"+rs.getString("m"));
			out.println("</p><hr>");
			b=rs.next();
			}
		}
	
con.close();
        } catch (Exception e) {e.toString(); }
		
%>
	

	 </div>
	  </div>

	  
  </body>
</html>