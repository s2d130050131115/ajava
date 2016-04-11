<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
    <head>
        <title>JSTL Xml Tags</title>
    </head>
    <body>
        <h3>Retrieving Books Infotmation from Title:</h3>
        <c:import var="bookInfo" url="books.xml"/>
        <x:parse xml="${bookInfo}" var="doc"/>
        -----------------------------------------------<br/>
        <c:set   var="s"  value="${param.bookname}"/> 
        <x:forEach  var="n" select="$doc/books/book" >
            <x:choose> 
                <x:when select="$n/title=$s">
                    <c:set var="m"  value="ok" /> 
                    Title:<x:out select="$n/title" /><br/>
                    Author:<x:out   select="$n/author"/>
                </x:when>  
                <x:otherwise> 
                </x:otherwise> 
            </x:choose>
        </x:forEach> 
    </table> 
  </body>
</html> 
