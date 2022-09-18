

<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    
    String mobile  = request.getParameter("mobile");
    String email        = request.getParameter("email");
    String name         = request.getParameter("name");
    String password     = request.getParameter("password");
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService driverProxy   = service.getUserWebServicePort();
        
    
    if(driverProxy.addCustomer(email,name,mobile,password)) {
        
        response.sendRedirect("/GoCheeta_Client/Customer/UI/CustomerRegister.jsp");
        
    }else{
       
        out.print("<script>alert('Your Registation Unsuccessfully.PLease Try Again')</script>"); 
        //response.sendRedirect("/GoCheeta_Client/Driver/UI/DriverRegister.jsp");
    }
%>

