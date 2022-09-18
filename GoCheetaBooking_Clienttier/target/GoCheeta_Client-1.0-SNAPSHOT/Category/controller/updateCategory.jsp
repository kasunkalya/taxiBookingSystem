<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int category_id  = Integer.parseInt(request.getParameter("id"));
    String name     = request.getParameter("name");
    String distance     = request.getParameter("distance");
    String price     = request.getParameter("price");
   
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();

    if(customerProxy.updateCategory(category_id, name,distance,price)) {
    
        response.sendRedirect("/GoCheeta_Client/Category/UI/ViewAllPrice.jsp");
    } else {
        out.print("false");
    }

%>
