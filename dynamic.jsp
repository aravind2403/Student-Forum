
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
		HttpSession hs=request.getSession(true);
        String uname = request.getParameter("name");
		
        String phone = request.getParameter("number");
		      String email = request.getParameter("id");
        try {
              Class.forName("com.mysql.jdbc.Driver");
			      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");
				  if(uname!="null")
				  {
	pt=con.prepareStatement("insert into prof_name values(?,?,?)");
	
pt.setString(1,uname);
pt.setString(2,email);
pt.setString(3,phone);
pt.executeUpdate();

	con.close();
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");
	pt=con.prepareStatement("CREATE DATABASE "+uname);
		String url = "jdbc:mysql://localhost:3306/"+uname;
	pt.executeUpdate();
	con.close();
    con = DriverManager.getConnection(url,"root","");
	PreparedStatement p1,p2,p3=null;
p1=con.prepareStatement("create table cl_table(name CHAR(30),doa DATE,fromd DATE,tod DATE,clapplied FLOAT(30),rhapplied FLOAT(30),reason CHAR(20),clavailed FLOAT(30),rhavailed FLOAT(30),balcl FLOAT(30),balrh FLOAT(30))");
p1.executeUpdate();

p2=con.prepareStatement("create table scl_table(name VARCHAR(30),doa DATE,fromd DATE,tod DATE,reason VARCHAR(20))");
p2.executeUpdate();
p3=con.prepareStatement("create table comp_table(name VARCHAR(30),doa DATE,workedon DATE,leav DATE,purpose VARCHAR(20))");
p3.executeUpdate();

				  con.close();}
        } catch (Exception e) {e.toString(); }

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
        <h1 class="blog-title">FIERA</h1>
        <p class="lead blog-description">The Perfect place for all the divergent minds.</p>
			Fiera is a virtual platform where a person can share his/her thoughts

      </div>
	  </div>
 </body>
</html>