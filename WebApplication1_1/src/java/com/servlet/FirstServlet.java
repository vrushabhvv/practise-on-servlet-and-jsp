/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;

/**
 *
 * @author Vrushabh
 */
public class FirstServlet implements Servlet{
    //creating life cycle method
   ServletConfig conf;
   
   public void init(ServletConfig conf)
   {
       this.conf=conf;
       System.out.println("creating object......");
       
   }    
   
   public void service(ServletRequest req,ServletResponse resp) throws ServletException,IOException
   {
       System.out.println("servicing..........");
       //to give response in the form of html
       resp.setContentType("text/html");
       PrintWriter out=resp.getWriter();
       out.println("<h1> this is my output from");
       out.println("<h1> todays date and time is " +  new Date().toString()+" </h1> ");
   }
   
   public void destroy(){
       System.out.println("going to destroy servlet object");
   }
   
   //non life cycle method
   public ServletConfig getServletConfig(){
       return this.conf;
   }
   public String getServletInfo(){
       return "this servlet is created by vrushabh";
   }
   
}
