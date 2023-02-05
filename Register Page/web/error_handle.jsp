<%-- 
    Document   : error_handle
    Created on : Jan 26, 2023, 12:21:53 AM
    Author     : Vrushabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_handling.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%!
            int a=20;
            int b=0;
        %>
        
        <%
            int div=a/b;
        %>
        
        <h2>division is:- <%= div %></h2>
    
        
            </body>
</html>
