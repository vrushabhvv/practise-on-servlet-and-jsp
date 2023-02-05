<%-- 
    Document   : index
    Created on : Jan 27, 2023, 9:47:15 AM
    Author     : Vrushabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Hello World!</h1>
        <!--1.out-tag-->
        <!--2.set-tag-->
        <c:set var="i" value="23" scope="application"></c:set>
        <h1><c:out value="${i}"></c:out></h1>
        
        <!--3.remove-tag-->
        <%--<c:remove var="i"></c:remove>--%>
        <h1>
        <c:out value="${i}">this is a default value</c:out>
        </h1>
        
        <!--4.if-tag-->
        <c:if test="${i==23}">
            <h1>yes i is 23 and condition is true</h1>
            <p>this is paragraph,hello how are you</p>
        </c:if>
            
            <!-- 5.choose+when+otherwise=switch-->
        <c:choose >
            <c:when test="${i>0}">
                <h1>this is my first case</h1>
                <h1>this number is positive</h1>
            </c:when>
                
            <c:when test="${i<0}">
                
                <h1>this is my second case</h1>
                <h1>this number is negative</h1>
                
            </c:when>
            <c:otherwise>
                <h1>this is default case</h1>
                <h1>this is number zero</h1>
            </c:otherwise>
        </c:choose>
                
                <!-- 6.for-each loop-->
        <c:forEach var="j" begin="1" end="10">
            <h1>value of j is <c:out value="${j}"></c:out></h1>
        </c:forEach>
             <!-- 7.re direct-->
             <!--if we want to search also once we enter to that web-->
        <c:url var="my_url" value="https://google.com">
            <c:param name="q" value="only javatech"></c:param>
            
        </c:url>
             <h1><c:out value="${my_url}"></c:out></h1>
    
             
        <c:redirect url="${my_url}"></c:redirect>
        
        
        
        
        
        
        
        <c:set var="i" value="10" scope="application"></c:set>
        <c:out value="${i}"></c:out>
        
        <c:remove var="i"></c:remove>
        
        <c:if test="${i>0}">
         
                <h1>this is if condition tag</h1>
                <h1>i is greater than zero</h1>
         
        </c:if>
                
        <c:choose>
            <c:when test="${i>0}">
                <h1>this is case 1</h1>
                <h1>i is greater than 1</h1>
            </c:when>
                <c:when test="${i<0}">
                    <h1>this is case2</h1>
                    <h1>i is less than zero</h1>
            </c:when>
            <c:otherwise>
                
            </c:otherwise>
        </c:choose>
            
        
        
    
</html>
