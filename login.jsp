
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
 
		session.invalidate();
		%>
	<div id="Container" style="width:1330px;">
<div id="Header"style="background-color:cyan;">
<div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
         
        </nav>
      </div>
    </div>
</div>



<div id="Content" style="width:1000px;height:200px; float:left;"><center></center>
 <div class="blog-header" >
        <h1 class="blog-title">FIERA</h1>
        <p class="lead blog-description">The Perfect place for all the divergent minds.</p>
			

      </div>
	  </div>
	  <div id="Content" style="width:1000px; float:left;><center></center>
 <div class="blog-header" >
        
        <p class="lead blog-description"> </p>
			 <a class="topic"><h4><center>Login</center></h4></a>
			 <form method="post" action="indexx.jsp">
     <table align="center"><b>
			<tr>
			<td>Username</td>
			<td><input type="textbox" name="name" required></td>
			</tr>
			
			
			<tr>
			<td><Br>Password</td>
			<td><br><input type="password" name="pass" required></td>
			</tr>
			</form>
			<br><Br></table><br><BR><center><input type="submit" value="Login">
</center>
</div>
	  <div id="Menu" style="font-color:black;text-align:center; width:330px; float:right;">
   <a class="topic" href="signin.jsp"> Sign up<a><br>
    <a class="topics">Not a member?</a><br><br><br>
	</div>

   </div>
	
        
         

 </body>
</html>