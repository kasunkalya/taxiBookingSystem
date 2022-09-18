
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


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>

        <style>
            .tableFixHead {
                overflow-y: auto;
                height:600px;

                margin-left:40px;
            }
            .tableFixHead thead th {
                position: sticky;
                top: 0;
            }
        </style>
    </head>
    <body>
        <div class="tableFixHead">
            <table  class="table table-bordered" style="width:90%;margin-left:3%;margin-right:3%;margin-top:12%" id="myTable">
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
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                </thead>
                <tbody>

                    <% for (User user : users) { %>
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
                        <td>   <a href="/GoCheetaBooking_Clienttier/Category/controller/deleteCategory.jsp?id=" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Accept</a>
                        </td>
                        <td>
                            <a href="/GoCheetaBooking_Clienttier/Category/function/editCategory.jsp?id=" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Reject</a>
                        </td>   
                        <td>   <a href="/GoCheetaBooking_Clienttier/Category/controller/deleteCategory.jsp?id=" class="btn btn-success" style="width:80px;height:40px;text-align:center;margin-left:5px;">Start</a>
                        </td>
                        <td>
                            <a href="/GoCheetaBooking_Clienttier/Category/function/editCategory.jsp?id=" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">End</a>
                        </td>  
                    </tr>
                    <% }%>



                </tbody>
            </table> 
        </div>   
</html>