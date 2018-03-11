 <html>
<head>
<title></title>
</head>

<body bgcolor="#FFFFFF" text="#000000">
	  <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%
        Connection con = null;
	PreparedStatement ps=null;

        String topic = request.getParameter("topic");
        String msg = request.getParameter("thou");
	

        try {
              Class.forName("oracle.jdbc.driver.OracleDriver");
              con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","aravind");
	ps=con.prepareStatement("insert into d values(?,?)");
	ps.setString(1,topic); 
	ps.setString(2,msg);

	ps.executeUpdate();
	out.println("insertion done");
            con.close();
        } catch (Exception e) { }

%>


</body>
</html>
