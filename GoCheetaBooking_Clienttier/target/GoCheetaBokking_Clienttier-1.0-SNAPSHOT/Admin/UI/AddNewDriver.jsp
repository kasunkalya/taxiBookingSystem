<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.Branch"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DriverWebService_Service service = new DriverWebService_Service();
    DriverWebService branchProxy = service.getDriverWebServicePort();

    List<Branch>branches = branchProxy.getBranchDrop();
        
%>
<%@ include file="/Admin/UI/adminMenu.jsp" %>    
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Add Driver</span>
        </div>

    </nav>  
    <div>
        <br> <br> <br> <br>
        <div>
            <div class="container" style="width: 450px; height:500px;">
                <form action="/GoCheetaBooking_Clienttier/Driver/Function/addDriverHelp.jsp" method="post" class="login-email">
   
                    <br>
	<div class="input-group">
            <input type="text" id="d_name" name="d_name" placeholder="Driver Name" required><br>
        </div> <br>
        
	<div class="input-group">
             <input type="email" id="d_email" name="d_email" placeholder="Driver Email" required><br>
        </div> <br>

        <div class="input-group">
             <input type="mobile" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" required><br>
        </div> <br>
        
        <div class="input-group">
             <input type="password" id="d_password" name="d_password" placeholder="Password" required><br>
        </div> <br>
            
	<div class="input-group">          
             <select id="branch" name="branch" style="font-size:0.9rem; width: 310px;">
                <option>Select Branch</option>
                   <% for(Branch branch: branches){ %>
                
        
                 %>
                   <option>
                   <% out.print(branch.getBName());%>     
                   </option> 

                  <% } %>
                </select>   
        </div> <br>
                
        <div class="input-group">               
            <select id="time_type" name="time_type" style="font-size:0.9rem;width: 310px;"><option>Select Option</option> 
                <option>Full Time</option> 
                <option>Part Time</option> 
            </select>   
        </div>     <br> 

        <div class="input-group">             
            <input type="submit" value="Sign Up" class="btn">
        </div>

                </form>

            </div>
        </div>
    </div>    

</section>    