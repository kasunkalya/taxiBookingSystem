<%-- 
    Document   : userMenu
    Created on : Sep 17, 2022, 6:20:33 PM
    Author     : kasunw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src ="https://code.jquery.com/jquery-3.5.0.js"></script>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/GoCheetaBooking_Clienttier/Css/style.css">
        <title>Go cheeta cab</title>
        <link rel="icon" href="/GoCheetaBooking_Clienttier/User/UI/image/Logo/Logo.png">
        <link rel="stylesheet" type="text/css" href="/GoCheetaBooking_Clienttier/Css/add.css">
        
	<title style="text-align: center;">Booking Order</title>
	<link rel="icon" href="/GoCheetaBooking_Clienttier/User/UI/image/homepage/icon/logo.png">
    </head>
    <body>   
 <div class="sidebar">
    <div class="logo-details">
        <i><img src="../../image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
      <span class="logo_name"style="font-size:20px;margin-left:-10px;">Go cheeta cab</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="#" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="../UI/AddCustomerOrder.jsp">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">Add Booking</span>
          </a>
        </li>
        
        <li>
          <a href="../UI/ViewAllBookingDetailsUser.jsp">
            <i class='bx bx-list-ul'></i>
            <span class="links_name">Order Details</span>
          </a>
        </li>
     
        <li>
          <a href="../UI/AddNewFeedback.jsp">
            <i class='bx bx-message' ></i>
            <span class="links_name">Feedback</span>
          </a>
        </li>
        <li>
        <li class="log_out">
          <a href="/GoCheetaBooking_Clienttier/User/UI/UserLogin.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>