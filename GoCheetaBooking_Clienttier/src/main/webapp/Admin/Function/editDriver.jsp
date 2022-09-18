<%-- 
    Document   : editDriver
    Created on : Sep 13, 2022, 11:24:10 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.Driver"%>
<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.Branch"%>
<%@page import="gocheeta.Dropdown"%>
<%@page import="gocheeta.Vehicle"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    String driver_email= request.getParameter("id");
    
    NewWebService_Service service = new NewWebService_Service();
    
    NewWebService customerProxy = service.getNewWebServicePort();
    Driver driver = customerProxy.getDriverbyEmail(driver_email);
   
    NewWebService TypeProxy = service.getNewWebServicePort();
    List<Dropdown>types = TypeProxy.getVehicleTypeDrop();    
%>

<%
    DriverWebService_Service service1 = new DriverWebService_Service();
    DriverWebService branchProxy = service1.getDriverWebServicePort();

    List<Branch>branches = branchProxy.getBranchDrop();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheetaBooking_Clienttier/Css/update.css">
	
        <title style="text-align: center;">Update Details</title>
	<link rel="icon" href="Gocheeta_Client/image/Logo/Logo_remove.png">

    </head>
    <body>

    <div class="container" style="width:40%; height:630px;">     
      <form action="/GoCheetaBooking_Clienttier/Admin/controller/updateDriver.jsp" method="post" class="login-email">
           <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Vehicle Details</p>     
        <div> 
            <input type="text" id="driver_mobile" name="driver_mobile" value="<% out.print(driver.getDriverMobile()); %>" placeholder="Driver Mobile" required>  
        <div class="input-group"> 
            <input type="text" id="d_password" name="d_password" value="<% out.print(driver.getDPassword()); %>" placeholder="Password" required><br>
        </div>
        <div class="input-group"> 
            <input type="text" id="d_name" name="d_name" value="<% out.print(driver.getDName()); %>" placeholder="Vehicle Model" required><br>
        </div>
        <div class="input-group"> 
            <input type="text" id="d_email" name="d_email" value="<% out.print(driver.getDEmail()); %>" placeholder="Vehicle Model" required><br>
        </div>
       
           <div class="input-group"> 
            <table style="width:100%">
              <th>
               <select id="branch" name="branch" value="<% out.print(driver.getBranch()); %>" style="font-size:0.9rem;">
                <option>Select Branch</option>
                   <% for(Branch branch: branches){ %>  %>
                   <option>
                   <% out.print(branch.getBName());%>     
                   </option> 
                  <% } %>
              </select>   
              </th>
               
               <th>
               <select id="time_type" name="time_type" value="<% out.print(driver.getTimeType());%>" style="font-size:0.9rem;padding-right:15px;padding-left:15px;">
                   <option>Select Option</option>
                   <option>Full Time</option> 
                   <option>Part Time</option> 
                </select>  
               </th>
            </table>    
        </div>
        <div class="input-group">             
             <input type="submit" value="Complete" class="btn">
        </div>
         </form>
     </div> 

    </body>
</html>
