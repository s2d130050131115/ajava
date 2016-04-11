<%@page contentType="text/html" import="java.sql.*"%>
<%@ page import="java.util.Date,java.text.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>Update DOB in Student Table</title>
    </head>
    <body>
        <sql:setDataSource 
            var="db" 
            driver="org.postgresql.Driver" 
            url="jdbc:postgresql://localhost:5433/s2d130050131115"
            user="postgres"  
            password="12345"/>
        <b>Connecting to SQL database</b><br/>
        <b>Database:s2d130050131115</b><br/>
        

<%
            Date DOB = new Date("2001/12/16");
            int id = 100;
        %>
        <sql:update dataSource="${db}" >
            create table SqlStudent(id int,FirstName varchar(255),LastName
            varchar(255),dob date);  
            INSERT INTO SqlStudent VALUES (100, 'Paramjeet Kaur', 'Saini', 
            '2002/05/16');
            INSERT INTO SqlStudent VALUES (101, 'Shreya', 'Patel', 
            '1978/11/28');
            INSERT INTO SqlStudent VALUES (102, 'Rohan', 'Shah', 
            '1980/10/10');
            INSERT INTO SqlStudent VALUES (103, 'Nikita', 'Rathod', 
            '1971/05/08');

            UPDATE SqlStudent SET dob = ? WHERE id = ?
            <sql:dateParam value="<%=DOB%>" type="date" />
            <sql:param value="<%=id%>" />
        </sql:update>  

        <b>Table Created</b><br/>
        <b>Records Added </b><br/>
        <b>Records Updated </b><br/>
        <b>Retrieving Data From SqlStudent Table...</b><br/><br/>

        <sql:query dataSource="${db}" var="rs">
            SELECT * from SqlStudent;
        </sql:query>

        <table border="1">
            <tr>
                <th>Emp ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>DoB</th>
            </tr>
            <c:forEach var="row" items="${rs.rows}">
                <tr>
                    <td><c:out value="${row.id}"/></td>
                    <td><c:out value="${row.FirstName}"/></td>
                    <td><c:out value="${row.LastName}"/></td>
                    <td><c:out value="${row.dob}"/></td>
                </tr>
            </c:forEach>

    </body>
</html> 
