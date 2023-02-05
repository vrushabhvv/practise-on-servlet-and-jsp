//creating servlet using servlet interface
package com.servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;
import org.apache.catalina.Server;
public class firstservlet implements Servlet{
    //life cycle method,server will run this method
    ServletConfig conf;
    public void init(ServletConfig conf)
    {
        this.conf=conf;
        System.out.println("creating object....");
    }
    public void service(ServletRequest req,ServletResponse resp)throws ServletException,IOException
    {
            System.out.println("servicing....");
            //set content type of response
            resp.setContentType("text/html");
            PrintWriter out=resp.getWriter();
            out.println("<h1>this is output from my servlet method :</h1>");
            out.println("<h1> todays date and time id"+new Date().toString()+"</h1>");
            
    }
    public void destroy()
    {
        System.out.println("going to servlet object");
    }
    
    //non life cycle method,when we call then these will run
    public ServletConfig getServletConfig()
    {
        return this.conf;
    }
    public String getServletInfo()
    {
        return "this servlet is created by vrushabh murale";
    }
}
