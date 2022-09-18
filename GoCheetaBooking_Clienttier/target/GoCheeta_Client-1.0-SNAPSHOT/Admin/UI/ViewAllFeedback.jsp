
<%@page import="gocheeta.User"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService viewProxy = service.getNewWebServicePort();
    
    List<User> users = viewProxy.getViewFeedbacks();
        
%>
<%@ include file="/Admin/UI/adminMenu.jsp" %>   
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Feed Back Details</span>
        </div>

    </nav>  
    <div>
        <br> <br> <br> <br>
        <div>
            <table class="table table-bordered" style="width:80%;margin-left:5%;margin-right:2%;margin-left:15%;margin-top:10%">
                <thead>
                <th scope="col"style="text-align:center; ">Feedback ID</th>
                <th scope="col"style="text-align:center; ">Subject</th>
                <th scope="col"style="text-align:center; ">Description</th>
                <th scope="col"style="text-align:center; ">Customer Mobile</th>
                <th scope="col"style="text-align:center; ">Pick Location</th>
                <th scope="col"style="text-align:center; ">Drop Location</th>
                <th scope="col"style="text-align:center; ">Area Branch</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th> 
                <th scope="col"style="text-align:center; ">Time</th>
                <th scope="col"style="text-align:center; ">Vehicle Type</th>   
              



                </thead>
                <tbody>
           <% for(User user : users){ %>
            <tr>
                <td><% out.print(user.getFeedbackId()); %></td>
                <td><% out.print(user.getSubject()); %></td>
                <td><% out.print(user.getDescription()); %></td>
               <td><% out.print(user.getMobile()); %></td>
                <td><% out.print(user.getPickLocation()); %></td>
                <td><% out.print(user.getDropLoction()); %></td>
                <td><% out.print(user.getAreaBranch()); %></td>
                <td><% out.print(user.getDistance()); %></td>
                <td><% out.print(user.getPrice()); %></td>
                <td><% out.print(user.getTime()); %></td>
                <td><% out.print(user.getVType()); %></td>
           
            
            </tr>
            <% } %>
                </tbody>
            </table>
        </div>
    </div>    

</section> 