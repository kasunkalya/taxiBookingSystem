<%-- 
    Document   : updateCustomer
    Created on : Aug 16, 2022, 1:45:51 AM
    Author     : kasunw
--%>


<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int customerId  = Integer.parseInt(request.getParameter("id"));
    String name     = request.getParameter("name");
    String email    = request.getParameter("email");
    String mobile   = request.getParameter("mobile");
    String password = request.getParameter("password");
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
        
//    out.print(customerProxy.updateCustomer(customerId, name, email, mobile, password));
        
//    customerProxy.addCustomer(name, email, mobile, password);

    if(customerProxy.updateCustomer(customerId, name, email, mobile, password)) {
        response.sendRedirect("/GoCheetaBooking_Clienttier/index.jsp");
    } else {
        out.print("false");
    }

%>
