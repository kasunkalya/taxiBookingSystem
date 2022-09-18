<%-- 
    Document   : dropDown
    Created on : Sep 9, 2022, 9:55:39 PM
    Author     : kasunw
--%>

<%@page import="gocheeta.Branch"%>
<%@page import="java.util.List"%>
<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DriverWebService_Service service = new DriverWebService_Service();
    DriverWebService branchProxy = service.getDriverWebServicePort();
    
  //  List<User> users= customerProxy.getUsers();
  
    List<Branch>branches = branchProxy.getBranch();
        
%>

  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    
    <center>
    <select>
         <% for(Branch branch: branches){ %>
        <option>Select</option>
        
               %>
                <option>
                <% out.print(branch.getBName());%>     
                </option> 
               
              
                  <% } %>
    </select>   
      </center>
   
    </body>
</html>