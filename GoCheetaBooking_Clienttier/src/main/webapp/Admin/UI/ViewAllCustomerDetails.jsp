<%-- 
    Document   : ViewAllCustomerDetails
    Created on : Aug 16, 2022, 8:17:09 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.Customer"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<Customer> customers = customerProxy.getCustomers();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <table  class="table table-bordered" style="width:70%;margin-left:5%;margin-right:2%;margin-left:20%;margin-top:10%">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Customer ID</th>
                <th scope="col"style="width:20%;text-align:center; ">Name</th>
                <th scope="col"style="width:25%;text-align:center; ">Email</th>
                <th scope="col">Mobile</th>
                <th scope="col" style="text-align:center">Action</th>
            </thead>
        <tbody>
            <% for(Customer customer: customers){ %>
            <tr> 
                <td style="width:15%;text-align: center"><% out.print(customer.getCustomerId()); %></td>
                <td><% out.print(customer.getName()); %></td>
                <td><% out.print(customer.getEmail()); %></td>
                <td><% out.print(customer.getMobile()); %></td>
              
                <td style="width:25%;text-align: center">
                   <a href="/GoCheetaBooking_Clienttier/Customer/Function/editCustomer.jsp?id=<% out.print(customer.getCustomerId()); %>" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</button>
                   <a href="/GoCheetaBooking_Clienttier/Customer/controller/deleteCustomer.jsp?id=<% out.print(customer.getCustomerId()); %>" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Delete</button>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table> 
       
</html>