/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.form;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Vrushabh
 */
public class RegisterServlet extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
    {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<h2>welcome to register servlet</h2>");
        
        
        String name=request.getParameter("user_name");
        String password=request.getParameter("userpassword");
        String email=request.getParameter("useremail");
        String gender=request.getParameter("usergender");
        String course=request.getParameter("usercourse");
        String condition=request.getParameter("condition");
        
       
        if(condition!=null){
            if(condition.equals("checked")){
                out.println("<h2> Name:"+name+ "</h2>");
                out.println("<h2> Password:"+password+ "</h2>");
                out.println("<h2> Email:"+email+ "</h2>");
                out.println("<h2> Gender:"+gender+ "</h2>");
                out.println("<h2> Course:"+course+ "</h2>");
                
                //jdbc
        //
            //jdbc here
        
        
        //
        //assume saved to database
        //forward request to RegisterServlet to success servlet
        
        //get the object of RequestDispatcher
        RequestDispatcher rd=request.getRequestDispatcher("success");
        rd.forward(request, response);
        }
        }
        else{
            out.println("<h2> you have not checked term and condition");
            
            //i want to include index.html file if we dont accept term and condition
            
            
             RequestDispatcher rd=request.getRequestDispatcher("index.html");
            //include
            rd.include(request, response);
        }
    }
}
