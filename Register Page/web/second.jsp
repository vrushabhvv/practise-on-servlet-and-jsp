<%-- 
    Document   : second
    Created on : Jan 25, 2023, 1:56:45 AM
    Author     : Vrushabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.Random,java.util.ArrayList,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="example.jsp" %>
        <h1>Random number:-
        
            <%
                Random r=new Random();
                int m=r.nextInt(10);
                
                
             %>
        
             <%= m %>
        </h1>
    </body>
</html>
