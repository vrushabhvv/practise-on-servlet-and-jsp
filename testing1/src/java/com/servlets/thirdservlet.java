//creating servlet using httpservlet
package com.servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;
public class thirdservlet extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        System.out.println("this is get method....");
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<h1>this is get method of my servlet</h1>");
        out.print(new Date().toString());
    }
}
