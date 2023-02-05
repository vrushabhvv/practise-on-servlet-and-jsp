/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.practise;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author Vrushabh
 */
public class Myservlet extends HttpServlet {
    
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        System.out.println("this is get method");
        
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<h1> this is get method of my servlet </h1>");
        out.println(new Date().toString());
        
        //you can override method here which are protocall specific
   
    }
}
