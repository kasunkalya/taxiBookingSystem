<%-- 
    Document   : AddFeedback
    Created on : Aug 22, 2022, 7:56:36 PM
    Author     : kasunw
--%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.Feedback"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="/User/UI/userMenu.jsp" %>   
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Feedback Add</span>
        </div>

    </nav>  

    <div >
        <div>

            <div class="container" style="width: 450px; height:500px;">
                <form action="/GoCheeta_Client/User/controller/addFeedback.jsp" method="post" style="">
                    <br> <br> <br> <br> <br>
                    <label for="fname">Subject</label><br>
                    <input type="text" id="subject" name="subject" placeholder="Subject" required><br>

                    <label for="lname">Description</label><br>
                    <textarea type="text" id="description" name="description" placeholder="description" ></textarea><br>

                    <input type="hidden" id="order_id" name="order_id" value="<% out.print(request.getParameter("id"));%>" ><br>

                    <br>

                    <input type="submit" value="Submit">
                </form>
            </div>
        </div>
    </div>    

</section>    