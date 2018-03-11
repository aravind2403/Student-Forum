
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
	
		String to1 = request.getParameter("to1");

        String sub1 = request.getParameter("sub1");
	
		String mess=request.getParameter("mess");
		if(to1!="null")
		{
        try {
              Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/"+to1;
	con = DriverManager.getConnection(url,"root","");

PreparedStatement p1=null;
	p1=con.prepareStatement("insert into inbox values(?,?,?)");
	p1.setString(1,uname);
	p1.setString(2,sub1);
	p1.setString(3,mess);
	p1.executeUpdate();
	
con.close();
        } catch (Exception e) {e.toString(); }
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
		


<%
	out.println("<form method=post action=send.jsp?name="+uname+">");
%>
<table>
<tr>
<td>
<br>To</td><td></td><td><br><input type="textbox" name="to1" required></td></tr><br><Br>
<tr><td><br>Subject</td><td></td><td><br><input type="textbox" name="sub1" required></td></tr>
<tr><td><br>Message</td><td></td><td><br><textarea name="mess" required></textarea></td></tr>
<br>
</table><br><Br>
<input type="submit" value="Send">

     </form>

	 </div>
	  </div>

	  <%
	  if(to1!="null")
	  {          
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+uname,"root","");
	pt=con.prepareStatement("insert into sent values(?,?)");
	pt.setString(1,to1);
	pt.setString(2,mess);
	pt.executeUpdate();
	con.close();
	  }
	  %>
	  
  </body>
</html>