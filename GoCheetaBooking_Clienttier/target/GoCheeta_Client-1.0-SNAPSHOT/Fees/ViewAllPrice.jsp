


<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<Category> categorys = customerProxy.getPriceRate();
        
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <table  class="table table-bordered" style="width:80%;margin-left:15%;margin-right:2%;margin-left:10%;margin-top:10%">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Category ID</th>
                <th scope="col"style="text-align:center; ">Category Name</th>
                <th scope="col"style="text-align:center; ">Distance</th>
                <th scope="col"style="text-align:center; ">Price</th>
                <th scope="col"style="text-align:center; ">Action</th>
         
            </thead>
        <tbody>
            <% for(Category category:categorys){ %>
            <tr> 
                <td style="width:15%;text-align: center"><% out.print(category.getCategoryId()); %></td>
                <td><% out.print(category.getName()); %></td>
                <td><% out.print(category.getDistance()); %></td>
                <td><% out.print(category.getPrice()); %></td>
             
                <td style="width:30%;text-align: center">
                   <a href="/GoCheeta_Client/Customer/Function/editCustomer.jsp?id=<% out.print(category.getCategoryId()); %>" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</button>
                   <a href="/GoCheeta_Client/Customer/controller/deleteCustomer.jsp?id=<% out.print(category.getCategoryId()); %>" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Delete</button>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table> 
       
</html>