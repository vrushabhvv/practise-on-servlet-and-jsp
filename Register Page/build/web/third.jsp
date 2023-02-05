<%-- 
    Document   : third
    Created on : Jan 25, 2023, 2:56:39 AM
    Author     : Vrushabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set var="name" value="techsoft india"></c:set>
        
        <c:out value="${name}"></c:out>
        
        <c:if test="${3>2}"><h2>this is true block 3>2</h2></c:if>
    </body>
</html>
