<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    int category_id = Integer.parseInt(request.getParameter("id"));
    
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    Category category = customerProxy.getCategorybyId(category_id);
    
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/signup.css">
	<title style="text-align: center;">User Register</title>
	<link rel="icon" href="image/homepage/icon/logo.png">
        
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/GoCheeta_Client/Category/controller/updateCategory.jsp" method="post">

            <label for="fname">Your Name</label><br>
            <input type="text" id="name" name="name" placeholder="Name" value="<% out.print(category.getName()); %>"><br>
            <input type="text" id="distance" name="distance" placeholder="Distance" value="<% out.print(category.getDistance()); %>"><br>
            <input type="text" id="price" name="price" placeholder="Price" value="<% out.print(category.getPrice()); %>"><br>
            <br>
            <input type="hidden" name="id" value="<% out.print(category.getCategoryId()); %>"><br>
      
            <input type="submit" class="btn btn-primary" value="update">
        </form>
    </body>
</html>
