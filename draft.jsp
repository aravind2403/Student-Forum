
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
             out.println(" <a class=topics href=draft.jsp?name="+uname+">Drafts</a><br>");
              out.println("<a class=topics href=sent.jsp?name="+uname+">Sent messages</a><br>");

			%>
			
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        <h2 class="blog-title">Communicate</h2>
        <p class="lead blog-description">Portal of communication.</p>
		



		<form name="sendd" method="post" action="">



     

	 </div>
	  </div>

  </body>
</html>