<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
    <head>
        <title>JSTL Xml Tags</title>
    </head>
    <body>
        <h3>Books Information</h3>
        <c:import var="bookInfo" url="books.xml"/>
        <x:parse xml="${bookInfo}" var="doc"/>
        -----------------------------------------------<br/>
        <x:forEach   var="n" select="$doc/books/book"> 
            Title:<x:out   select="$n/title"  />
            <br>  
            Author:<x:out   select="$n/author"  />  
            <br>
            ========  
            <br>  
        </x:forEach> 
        -----------------------------------------------<br/>
        <h3>Retrieving Book Information</h3>
        <c:set   var="s"  value="${param.auth}"/> 
        <x:forEach  var="n" select="$doc/books/book" >
            <x:if   select="$n/author=$s" > 
                <c:set  var="a"   value="ok"  /> 
                Title:<x:out   select="$n/title"  /> 
                <br/> 
                Author:<x:out   select="$n/author"  /> 
                <br/> 
            </x:if> 
        </x:forEach>
    </body>
</html> 
