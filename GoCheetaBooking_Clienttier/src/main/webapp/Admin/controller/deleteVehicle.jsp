<%-- 
    Document   : deleteVehicle
    Created on : Sep 11, 2022, 10:18:43 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    int driver_mobile = Integer.parseInt(request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy = service.getNewWebServicePort();
        
    if(vehicleProxy.deleteVehicleDriver(driver_mobile)) {
        out.print("Delete Successfully");
       response.sendRedirect("/GoCheetaBooking_Clienttier/Category/UI/ViewAllPrice.jsp");
    }else {
        out.print("Delete Unsuccessfully");
    }

%>
