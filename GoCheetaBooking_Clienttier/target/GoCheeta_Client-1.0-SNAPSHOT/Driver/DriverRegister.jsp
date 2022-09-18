<%-- 
    Document   : DriverRegister
    Created on : Sep 4, 2022, 10:51:14 PM
    Author     : kasunw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String name     = request.getParameter("name");
    String email    = request.getParameter("email");
    String mobile   = request.getParameter("mobile");
    String password = request.getParameter("password");
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
        
//    customerProxy.addCustomer(name, email, mobile, password);
    
    if(customerProxy.addCustomer(name, email, mobile, password)) {
        response.sendRedirect("/GoCheeta_Client/index.jsp");
    }else{
        out.print("false");
    }

%>