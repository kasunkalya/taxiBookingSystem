<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.Dropdown"%>
<%@page import="gocheeta.Branch"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService TypeProxy = service.getNewWebServicePort();

    List<Dropdown>types = TypeProxy.getVehicleTypeDrop();
        
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/signup.css">

	<title style="text-align: center;">Vehicle Register</title>
	<link rel="icon" href="image/homepage/icon/logo.png">
        
        <title>Vehicle Register</title>
    </head>
    <body>

     <div class="container" style="width: 500px; height:580px;">
            
      <form action="/GoCheeta_Client/Admin/Function/addVehicleHelp.jsp" method="post" class="login-email">
       
          <br> <br>
          <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:-15px;">Register</p>
          <br>
                
        <div>
             <input type="hidden" id="driver_mobile" name="driver_mobile" value="<%out.print(session.getAttribute("driver_mobile"));%>" placeholder="Vehicle Number" required>     
        </div>
 
	<div class="input-group">
            <input type="text" id="vehicle_no" name="vehicle_no" placeholder="Vehicle Number" required><br>
        </div>

        <div class="input-group">          
             <select id="vehical_Type" name="vehical_Type" style="font-size:0.9rem;padding-right:15px;padding-left:15px;">
                <option>Select Type</option>
                   <% for(Dropdown type: types){ %>     
                   %>
                   <option>
                   <% out.print(type.getVehicalType());%>     
                   </option> 

                  <% } %>
                </select>   
        </div>
 
        <div class="input-group">
             <input type="text" id="vehicle_model" name="vehicle_model" placeholder="Vehicle Model" required><br>
        </div>
        
        <br> 
        
        <div class="input-group">             
             <input type="submit" value="Sign Up" class="btn">
        </div>
              <p class="login-register-text" style="margin-top:-12px;text-align:center;">Don't have an account? <a href="/GoCheeta_Client/Driver/UI/DriverRegister.jsp">Register</a>.</p>  
         </form>
     </div> 
                
    </body>
</html>