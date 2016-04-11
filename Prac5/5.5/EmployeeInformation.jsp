<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html"%>
	
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Employee Info</title>
<style type="text/css">
.container{
background-color:  #FEC0CC;
margin: 0px 150px 150px 150px;
border: 2px;
position: relative;}
.inside{
background-color: #AED8E6;
margin: 20px 0px 0px 0x; 
border: 5px;
text-indent: 10 px;
padding: 10px;
font-family: monospace;
font-weight: bold;
}
.font{
margin: 10px;
font-family: monospace;
font-weight: bold;}
h2,p{
text-align: center;}
</style>
<script type="text/javascript">
	function fun() {
		var selectBox = document.getElementById("selectBox");
	    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
	    var x = document.getElementsByName("id");
	    var i;
	    for (i = 0; i < x.length; i++) {
	        if (x[i].type == "text") {
	            x[i].value = selectedValue;
	        }
	    }
	}
</script>
</head>
<body>
<div class="container">
<h2>EMPLOYEE INFORMATION</h2>
<p class="font">130050131115</p>
<div class="inside">
	<form action="ProccessAction.jsp" name="form1">

		Enter Employee id: <input type="text" name="id" value=""/> 
		  <select id="selectBox" onchange="fun();">
			<%final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
			final String DB_URL = "jdbc:mysql://127.0.0.1:3306/s2d130050131115";
			final String USER = "root";
			final String PASS = "";
			Connection conn;
			Statement stmt;
			ResultSet rs = null;
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			stmt = conn.createStatement();
			String sql = "select id from employee";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {%>
				 <option class= "font" value="<%out.print(rs.getInt(1)); %>"><%out.print(rs.getInt(1)); %></option>
			<%} %>
		
		</select><br /> 
		Enter Employee Name: <input type="text" name="emp_name" /><br />
		<input class="font" type="radio" name="selection" value="insert" > Insert<br/>
		<input class="font" type="radio" name="selection" value="modify">modify<br />
		<input class="font" type="radio" name="selection" value="delete">delete<br />
		<input class="font" type="submit"> <input type="reset">
	</form>
</div>
</div>
</body>
</html>

