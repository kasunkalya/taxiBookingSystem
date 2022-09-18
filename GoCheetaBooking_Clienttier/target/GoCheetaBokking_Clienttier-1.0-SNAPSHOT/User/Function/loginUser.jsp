<%-- 
    Document   : loginUser
    Created on : Sep 4, 2022, 11:13:50 AM
    Author     : kasunw
--%>

<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email    = request.getParameter("email");
    String password = request.getParameter("password");
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService customerProxy = service.getUserWebServicePort();
    
   if(customerProxy.loginCustomer(email, password)) {
        out.print("<script>alert('Your details inserted!.')</script>");
        session.setAttribute("email", email);
        response.sendRedirect("/GoCheetaBooking_Clienttier/UserDashboard.jsp");
        
       
    }else{
    
        out.print("<script>alert('Login Unsuccessful.Try Again')</script>");
        //out.print("Login Unsuccessful");
    }
   
    
   /*if(email.equals("Nirasha") && password.equals("123")) {
        session.setAttribute("email", email);
        response.sendRedirect("index.jsp");
    }else{
        out.print("Login Unsuccessful");
    }*/

%>
