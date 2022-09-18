
<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.Branch"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/GoCheeta_Client/Css/signup.css">

	<title style="text-align: center;">Customer Register</title>
	<link rel="icon" href="image/homepage/icon/logo.png">
        
        <title>Customer Register</title>
    </head>
    <body>

     <div class="container" style="width: 500px; height:600px;">

      <form action="/GoCheeta_Client/Customer/Function/addCustomerHelp.jsp" method="post" class="login-email">
   
          <br>
          <p class="login-text" style="font-size: 1.9rem; font-weight:800;margin-top:-15px;">Sign Up</p>
        <br>
	<div class="input-group">
            <input type="text" id="name" name="name" placeholder="Your Name" required><br>
        </div>
        
	<div class="input-group">
             <input type="email" id="email" name="email" placeholder="Email Adderss" required><br>
        </div>

        <div class="input-group">
             <input type="mobile" id="mobile" name="mobile" placeholder="Mobile Number" required><br>
        </div>
        
        <div class="input-group">
             <input type="password" id="password" name="password" placeholder="Password" required><br>
        </div>

        <br>
        <div class="input-group">             
             <input type="submit" value="Sign Up" class="btn">
        </div>
         <p class="login-register-text" style="text-align:center;">Already have an account? <a href="/GoCheeta_Client/User/UI/UserLogin.jsp">Sign in</a>.</p>
         </form>
     </div>  
                
    </body>
</html>