<%-- 
    Document   : index
    Created on : Aug 14, 2022, 11:19:57 PM
    Author     : thilan
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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/GoCheeta_Client/Customer/controller/addCustomer.jsp" method="post">

            <label for="fname">Your Name</label><br>
            <input type="text" id="name" name="name" placeholder="Name" required><br>

            <label for="lname">Email</label><br>
            <input type="text" id="email" name="email" placeholder="Email" required><br>

            <label for="mobile">Mobile</label><br>
            <input type="text" id="c_mobile" name="mobile" placeholder="Mobile" required><br>

            <label for="password">Password</label><br>
            <input type="text" id="c_Password" name="password" placeholder="Password" required><br>

            <br>

            <input type="submit" value="Sign Up">
        </form>
        
        

        <table>
            <thead>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Password</th>
                <th>Action</th>
            </thead>
        <tbody>
            <% for(Customer customer: customers){ %>
            <tr>
                <td><% out.print(customer.getName()); %></td>
                <td><% out.print(customer.getEmail()); %></td>
                <td><% out.print(customer.getMobile()); %></td>
                <td><% out.print(customer.getPassword()); %></td>
                <td>
                    <a href="/GoCheeta_Client/Function/editCustomer.jsp?id=<% out.print(customer.getCustomerId()); %>">update</a>
                    <a href="/GoCheeta_Client/Customer/controller/deleteCustomer.jsp?id=<% out.print(customer.getCustomerId()); %>">delete</a>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>

</body>
</html>

