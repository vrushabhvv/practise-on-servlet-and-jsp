/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.practise;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author Vrushabh
 */
public class RegisterServlet extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        out.println("<h2>Welcome to Register Servlet");
        String name=request.getParameter("user_name");
        String password=request.getParameter("user_password");
        String email=request.getParameter("user_email");
        String gender=request.getParameter("user_gender");
        String course=request.getParameter("user_course");
        String cond=request.getParameter("condition");
        if(cond!=null){
        if(cond.equals("checked")){
            out.println("<h2>Name: "+name+ "</h2>");
            out.println("<h2>Password: "+password+ "</h2>");
            out.println("<h2>Email: "+email+ "</h2>");
            out.println("<h2>Gender: "+gender+ "</h2>");
            out.println("<h2>Course: "+course+ "</h2>");
           //you can write jdbc here
           
           //assume that you have written jdbc and saved data to db
           
           //now forward the request
           RequestDispatcher rd=request.getRequestDispatcher("success");//this is servlet url pattern
           rd.forward(request, response);
        }
        }
        else{
            out.println("<h2>you have not accepted terms and condition</h2>");
            
            //i want to include output of the index.html here 
            
            //get the object of the RequestDispatcher
            
           RequestDispatcher rd=request.getRequestDispatcher("index.html");//if you want to include other servlet you can provide the servlet url
        
           //include
           rd.include(request, response);
        }
    }
}
