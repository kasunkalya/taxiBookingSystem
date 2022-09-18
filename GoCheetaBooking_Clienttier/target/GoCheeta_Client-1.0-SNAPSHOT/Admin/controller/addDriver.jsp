
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int driver_mobile   = Integer.parseInt(request.getParameter("driver_mobile"));
    String d_name     = request.getParameter("d_name");
    String d_email    = request.getParameter("d_email");
    String d_password = request.getParameter("d_password");
    String branch = request.getParameter("branch");
    String time_type = request.getParameter("time_type");
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService driverProxy = service.getNewWebServicePort();
   
    if(driverProxy.addDriver(driver_mobile,d_name, d_email, d_password, branch, time_type)) {
        //out.print("Successfully");
        response.sendRedirect("/GoCheeta_Client/Admin/UI/AddNewDriver.jsp");
        
    }else{
        out.print("false");
    }

%>