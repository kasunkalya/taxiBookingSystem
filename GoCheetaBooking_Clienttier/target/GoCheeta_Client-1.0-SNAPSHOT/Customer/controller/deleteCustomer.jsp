<%-- 
    Document   : deleteCustomer
    Created on : Aug 16, 2022, 1:36:24 AM
    Author     : kasunw
--%>

<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    int customerId = Integer.parseInt(request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
        
    if(customerProxy.deleteCustomer(customerId)) {
       response.sendRedirect("/GoCheeta_Client/index.jsp");
    }else {
        out.print("false");
    }

%>