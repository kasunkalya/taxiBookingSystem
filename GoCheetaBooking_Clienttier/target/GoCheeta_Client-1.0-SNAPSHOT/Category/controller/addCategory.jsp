<%-- 
    Document   : addCategory
    Created on : Aug 20, 2022, 3:42:42 PM
    Author     : kasunw
--%>


<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String name     = request.getParameter("name");
    int rate_id    = Integer.parseInt(request.getParameter("rate_id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
        
//    customerProxy.addCustomer(name, email, mobile, password);
    
    if(customerProxy.addCategory(name,rate_id)) {
    
        response.sendRedirect("/GoCheeta_Client/Category/UI/AddNewCategory.jsp");
    }else{
        out.print("false");
    }

%>