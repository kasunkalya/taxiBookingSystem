<%-- 
    Document   : ViewAllBookingFullDetails
    Created on : Aug 20, 2022, 9:51:17 PM
    Author     : kasunw
--%>


<%@page import="gocheeta.User"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<User> users= customerProxy.getUsers();
        
%>


<%@ include file="/User/UI/userMenu.jsp" %>   

<section class="home-section">
   
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Booking Details</span>
        </div>

    </nav>  
 <br><br><br><br>
    <div>
        <div>
            
        <table  class="table table-bordered" style="width:100%;margin-left:10%;margin-right:1%;margin-left:1%;">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Order ID</th>
                <th scope="col"style="text-align:center; ">Mobile</th>
                <th scope="col"style="text-align:center; ">Pick Location</th>
                <th scope="col"style="text-align:center; ">Drop Location</th>
                <th scope="col"style="text-align:center; ">Area Branch</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th> 
                <th scope="col"style="text-align:center; ">Time</th>
                <th scope="col"style="text-align:center; ">Vehicle Type</th>
                <th scope="col"style="width:15%;text-align:center; ">Active/No Active</th>
                <th scope="col"style="width:15%;text-align:center; ">Option</th>

            </thead>
        <tbody>
           
                <% for(User user: users){ %>
            <tr> 
                <td style="width:5%;text-align: center"><% out.print(user.getOrderId()); %></td>
                <td><% out.print(user.getMobile()); %></td>
                <td><% out.print(user.getPickLocation()); %></td>
                <td><% out.print(user.getDropLoction()); %></td>
                <td><% out.print(user.getAreaBranch()); %></td>
                <td><% out.print(user.getDistance()); %></td>
                <td><% out.print(user.getPrice()); %></td>
                <td><% out.print(user.getTime()); %></td>
                <td><% out.print(user.getVType()); %></td>
                <td><% out.print(user.getOption()); %></td>      
              
                <td style="width:15%;text-align: center">
                    
                    <a href="./AddNewFeedback.jsp?id=<% out.print(user.getOrderId()); %>" class="btn btn-primary" style="width:90px;height:40px;text-align:center;margin-right:5px;">FeedBack</a>
 
                </td>
            </tr>
            <% } %>
         
        </tbody>
        </div>
    </div>    

</section>    