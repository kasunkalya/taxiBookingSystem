

<%@page import="gocheeta.Customer"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    int customerId = Integer.parseInt(request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    Customer customer = customerProxy.getCustomerbyId(customerId);
    
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/GoCheetaBooking_Clienttier/Customer/controller/updateCustomer.jsp" method="post">

            <label for="fname">Your Name</label><br>
            <input type="text" id="name" name="name" placeholder="Name" value="<% out.print(customer.getName()); %>"><br>

            <label for="lname">Email</label><br>
            <input type="text" id="email" name="email" placeholder="Email" value="<% out.print(customer.getEmail()); %>"><br>

            <label for="mobile">Mobile</label><br>
            <input type="text" id="c_mobile" name="mobile" placeholder="Mobile" value="<% out.print(customer.getMobile()); %>"><br>

            <label for="password">Password</label><br>
            <input type="text" id="c_Password" name="password" placeholder="Password" value="<% out.print(customer.getPassword()); %>"><br>

            <br>
            <input type="hidden" name="id" value="<% out.print(customer.getCustomerId()); %>"><br>
            <input type="submit" value="update">
        </form>
    </body>
</html>
