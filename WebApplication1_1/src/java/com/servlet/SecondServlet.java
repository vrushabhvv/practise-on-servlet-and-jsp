/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
/**
 *
 * @author Vrushabh
 */
public class SecondServlet extends GenericServlet{

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("this is servlet using generic servlet"); //this is console output
        //to send response from servlet 
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        out.println("<h1> this is my second servlet using generic servlet </h1>");
    }
    
}
