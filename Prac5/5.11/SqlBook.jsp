<%@page contentType="text/html" import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>BOOK_DETAILS</title>
    </head>
    <body>
        <sql:setDataSource 
            var="db" 
            driver="org.postgresql.Driver" 
            url="jdbc:postgresql://localhost:5433/s2d130050131115"
            user="postgres"  
            password="12345"/>

        <b>Connecting to SQL database</b><br/>
        <b>Database: s2d130050131115</b><br/>
        <c:set var='id' value='${param.id}'  />  
        <c:set var='bnm' value='${param.Bname}' />  
        <c:set var='auth' value='${param.author}' /> 
 
        <sql:update 
            dataSource="${db}" >
            insert into books_details values(${id},'${bnm}','${auth}');
        </sql:update>  
        <b>Record Added</b><br/>
        <b>Retrieving Data From books_details Table...</b><br/><br/>
        <sql:query dataSource="${db}" var="rs">
            SELECT * from books_details;
        </sql:query>

    <table border="1">  
        <c:forEach   var="row"  items="${rs.rows}" >  
            <tr> 
                <td> <c:out value="${row.id}" /></td> 
                <td> <c:out value="${row.book_name}" /></td>
                <td> <c:out value="${row.author}" /></td>
            </tr>  
        </c:forEach>  
    </table>
</body>
</html> 
