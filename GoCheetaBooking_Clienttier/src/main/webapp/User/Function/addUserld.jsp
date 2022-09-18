<%-- 
    Document   : editCustomer
    Created on : Aug 16, 2022, 1:52:11 AM
    Author     : kasunw
--%>

<%@page import="gocheeta.Feedback"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    int order_id = Integer.parseInt(request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
   Feedback feedback = customerProxy.getFeedbackbyId(order_id);
    
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="GoCheetaBooking_Clienttier/User/UI/AddNewFeedback.jsp" method="post">

            <input type="hidden" name="id" value="<% out.print(feedback.getOrderId()); %>"><br>
            <input type="submit" value="update">
        </form>
    </body>
</html>
