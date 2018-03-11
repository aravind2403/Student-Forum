
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
		
        String uname = request.getParameter("uname");
        String age = request.getParameter("age");
	     String pass = request.getParameter("pass");
		      String email = request.getParameter("email");
			       String no = request.getParameter("no");
        try {
              Class.forName("com.mysql.jdbc.Driver");
			      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
	pt=con.prepareStatement("insert into blogusers values(?,?,?,?,?)");
	
pt.setString(1,uname);
pt.setString(2,age);
pt.setString(3,pass);
pt.setString(4,email);
pt.setString(5,no);
pt.executeUpdate();

	con.close();
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");
	pt=con.prepareStatement("CREATE DATABASE "+uname);
		String url = "jdbc:mysql://localhost:3306/"+uname;
	pt.executeUpdate();
	con.close();
    con = DriverManager.getConnection(url,"root","");
	PreparedStatement p1,p2,p3=null;
p1=con.prepareStatement("create table sent(t CHAR(30),m CHAR(250))");
p1.executeUpdate();

p2=con.prepareStatement("create table inbox(f CHAR(30),m CHAR(250))");
p2.executeUpdate();
p3=con.prepareStatement("create table post(t CHAR(30),m CHAR(250))");
p3.executeUpdate();


  
	 out.println("<div id=Container style=width:1330px;>");
 out.println("<div id=Header> ");
 out.println("<div class=blog-masthead>");
      out.println(" <div class=container>");
       out.println("  <nav class=blog-nav>");
		 out.println("  <a class=blog-nav-item href=index.html>Home</a>");
        out.println("<a class= blog-nav-item href= blog1.jsp?name="+uname+">Blog</a>"); ");
		
		
	con.close();
        } catch (Exception e) {e.toString(); }

  %>
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
              <a class="topics" href="india.jsp">India</a><br>
              <a class="topics" href="sci.jsp">Science</a><br>
			  <a class="topics" href="cul.jsp">Culture</a><br>
			 <a class="topics" href="tech.jsp">Technology</a><br>
              <a class="topics" href="spa.jsp">Space</a><br>
				<a class="topics" href="pol.jsp">Politics</a><br>
				        <a class="topics" href="edu.jsp">Education</a><br>
             </center>
         
          
</div>

<div id="Content" style="width:1000px; float:right;"><center></center>
 <div class="blog-header" >
        <h1 class="blog-title">FIERA</h1>
        <p class="lead blog-description">The Perfect place for all the divergent minds.</p>
			oviniernveiubiuerpb

      </div>
	  </div>
 </body>
</html>