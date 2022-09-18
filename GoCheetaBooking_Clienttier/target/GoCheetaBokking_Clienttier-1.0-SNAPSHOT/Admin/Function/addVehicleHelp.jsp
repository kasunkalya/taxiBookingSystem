<%-- 
    Document   : addVehicleHelp
    Created on : Sep 11, 2022, 3:10:33 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    
    int driver_mobile = Integer.parseInt(request.getParameter("driver_mobile"));
    String vehicle_no    = request.getParameter("vehicle_no");
    String vehical_Type     = request.getParameter("vehical_Type");
    String vehicle_model = request.getParameter("vehicle_model");

    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy   = service.getNewWebServicePort();
        
    if(vehicleProxy.addVehicle(driver_mobile,vehicle_no,vehical_Type, vehicle_model)) {
    
        
        response.sendRedirect("/GoCheetaBooking_Clienttier/Admin/UI/ViewAllVehicleDriver.jsp");
        
    }else{
       
        out.print("<script>alert('Your Registation Unsuccessfully.PLease Try Again')</script>"); 
    }
%>


