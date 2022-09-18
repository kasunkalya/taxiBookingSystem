<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/style.css">
    <title>Go Cheetacab.lk</title>
    <link rel="icon" href="image/Logo/Logo.png">

  </head>

<body>
  <div class="sidebar">
    <div class="logo-details">
        <i><img src="./image/Logo/Logo_remove.png" alt="alt" style="width:30px"/></i>
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
          <a href="/GoCheeta_Client/User/UI/UserLogin.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>

      <div class="profile-details">
        <span class="admin_name">
        <%
           out.print(session.getAttribute("email"));
        %>
        </span>
        <i><img src="image/icon/user.png" alt="alt" style="width:25px;margin-left:20px;"></i>
      </div>
    </nav>

      <div>
        <div>
            <%@ include file="User/UI/ViewActiveBooking.jsp" %>  
      </div>
    </div>
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
   let sidebarBtn = document.querySelector(".sidebarBtn");
   sidebarBtn.onclick = function() {
   sidebar.classList.toggle("active");
   if(sidebar.classList.contains("active")){
   sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
 }else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>

