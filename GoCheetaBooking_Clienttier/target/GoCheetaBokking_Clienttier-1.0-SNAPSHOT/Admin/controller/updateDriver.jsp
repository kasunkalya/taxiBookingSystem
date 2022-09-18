<%-- 
    Document   : updateDriver
    Created on : Sep 13, 2022, 11:29:56 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   // int driver_mobile     = Integer.parseInt(request.getParameter("id"));
    String d_name            = request.getParameter("d_name");
    String d_email           = request.getParameter("id");
    String branch            = request.getParameter("branch");
    String time_type         = request.getParameter("time_type");
    String d_password          = request.getParameter("d_password");

    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy = service.getNewWebServicePort();

    if(vehicleProxy.updateDriver(d_name,d_email,d_password,branch, time_type)) {
    
        response.sendRedirect("/GoCheetaBooking_Clienttier/Admin/UI/ViewAllDriver.jsp");
  
        
    } else {
        out.print("false");
    }

%>
