
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    int category_id = Integer.parseInt(request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
        
    if(customerProxy.deleteCategory(category_id)) {
        out.print("Delete Successfully");
       response.sendRedirect("/GoCheetaBooking_Clienttier/Category/UI/ViewAllPrice.jsp");
    }else {
        out.print("Delete Unsuccessfully");
    }

%>