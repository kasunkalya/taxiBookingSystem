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
    int order_id  = Integer.parseInt(request.getParameter("order_id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    

%>
