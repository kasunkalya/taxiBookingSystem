<%-- 
    Document   : addOrderHelper
    Created on : Sep 14, 2022, 9:54:34 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.UserWebService"%>
<%@page import="gocheeta.UserWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.DriverWebService"%>
<%@page import="java.util.List"%>

<%
    String driver_mobile    = request.getParameter("driver_mobile");
    String vehicle_no       = request.getParameter("vehicle_no");
    String mobile           = request.getParameter("mobile");
    String order_email      = request.getParameter("order_email");
    String pick_location    = request.getParameter("pick_location");
    String drop_loction     = request.getParameter("drop_loction");
    String city             = request.getParameter("city");
    String area_branch      = request.getParameter("area_branch");
    String distance         = request.getParameter("distance");
    String price            = request.getParameter("price");
    String time             = request.getParameter("time");
    String v_type           = request.getParameter("v_type");
    String option           = "No Active";
    
    UserWebService_Service service = new UserWebService_Service();
    UserWebService userProxy   = service.getUserWebServicePort();
        
    
    if(userProxy.addUserOrder(mobile,order_email,pick_location,drop_loction,city,area_branch,distance,price,time,vehicle_no,v_type,driver_mobile,option)) {

       request.setAttribute("msg","Thank You!!Your Booking Added Successfully");
       RequestDispatcher rd = request.getRequestDispatcher("/GoCheeta_Client/User/UI/SearchVehicalBook.jsp");
       rd.include(request, response);
        
    /*String msg = "Thank You!!Your Booking Added Successfully";
        request.setAttribute("msg",msg);
        response.sendRedirect("/GoCheeta_Client/User/UI/SearchVehicalBook.jsp");*/
        
    }else{

       request.setAttribute("msg","Thank You!!Your Booking Added Successfully");
       RequestDispatcher rd = request.getRequestDispatcher("/GoCheeta_Client/User/UI/SearchVehicalBook.jsp");
       rd.include(request, response);
       // out.print("<script>alert('Your Registation Unsuccessfully.PLease Try Again')</script>"); 
        //response.sendRedirect("/GoCheeta_Client/User/UI/SearchVehicalBook.jsp");
    }
%>
