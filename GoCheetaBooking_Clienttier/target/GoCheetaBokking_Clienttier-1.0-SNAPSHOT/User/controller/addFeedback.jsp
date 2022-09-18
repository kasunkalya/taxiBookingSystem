<%-- 
    Document   : addFeedback
    Created on : Aug 22, 2022, 9:12:04 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    
    int order_id    = Integer.parseInt(request.getParameter("order_id"));
    String subject    = request.getParameter("subject");
    String description   = request.getParameter("description");
 
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
        
  
    if(customerProxy.addFeedback(subject, description, order_id)) {
        response.sendRedirect("/GoCheetaBooking_Clienttier/User/UI/ViewAllBookingDetails.jsp");
    }else{
        out.print("Added Unsuccessfully");
    }

%>