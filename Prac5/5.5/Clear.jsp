<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Page</title>
</head>
<body>
<script>
<%final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
final String DB_URL = "jdbc:mysql://127.0.0.1:3306/s2d130050131115";
final String USER = "root";
final String PASS = "";
Connection conn;
Statement stmt;
Class.forName(JDBC_DRIVER);
conn = DriverManager.getConnection(DB_URL, USER, PASS);
stmt = conn.createStatement();
String sql = "delete from employee where id="+session.getAttribute("id");
int i;
try{
i=stmt.executeUpdate(sql); 
}catch (Exception e){
	i=0;
}
if(i==1)
{
%>alert("Deleted Successfully");<%} else { %>alert("Deletion failed!!! ID DOES NOT EXIST");<%} %>
</script>
</body>
</html> 
