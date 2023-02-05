<%-- 
    Document   : first
    Created on : Jan 25, 2023, 1:05:38 AM
    Author     : Vrushabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: aliceblue">
        <h1>Hello World!</h1>
        <%!
            int a = 10;
            int b = 20;
            String str1 = "techsoft india";

            public int doSum() {
                return a + b;
            }

            public String doReverse() {
                StringBuffer sb = new StringBuffer(str1);
                return sb.reverse().toString();

            }
        %>
        
        <%
            out.println(a);
            out.println("<br>");
            out.println(b);
            out.println("<br>");
            out.println(doReverse());
            out.println("<br>");
            out.println(doSum());
            
            
            
         %>
         
         <h1 style="color: blue;"> Sum is: <%= doSum() %></h1>
    </body>
</html>
