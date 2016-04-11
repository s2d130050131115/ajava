<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLClientInfoException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Insert Page</title>
</head>
<body>
<script>
<%final String JDBC_DRIVER = "com.mysqljdbc..Driver";
final String DB_URL = "jdbc:mysql://127.0.0.1:3306/s2d130050131115";
final String USER = "root";
final String PASS = "";
Connection conn;
Statement stmt;
Class.forName(JDBC_DRIVER);
conn = DriverManager.getConnection(DB_URL, USER, PASS);
stmt = conn.createStatement();
String sql = "insert into employee values("+session.getAttribute("id")+",'"+session.getAttribute("name")+"')";
int i=0;
try{
i=stmt.executeUpdate(sql); 
}catch (SQLException e){
	e.printStackTrace();
	i=0;	
}
if(i==1)
{
%>alert("Inserted successfully");<%} else { %>alert("Insert Failed!! ID already exists");<%} %>
</script>
</body>
</html>
