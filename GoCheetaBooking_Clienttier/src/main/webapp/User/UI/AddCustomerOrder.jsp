<%@page import="gocheeta.Vehicle"%>
<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.Dropdown"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.DriverWebService"%>
<%@page import="gocheeta.DriverWebService_Service"%>
<%@page import="gocheeta.Branch"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    DriverWebService_Service service = new DriverWebService_Service();
    DriverWebService branchProxy = service.getDriverWebServicePort();

    List<Branch> branches = branchProxy.getBranchDrop();

%>

<%    NewWebService_Service service1 = new NewWebService_Service();
    NewWebService customerProxy = service1.getNewWebServicePort();

    List<Category> categorys = customerProxy.getPriceRate();

%>
<%    String vehicle_no = request.getParameter("id");

    NewWebService_Service service2 = new NewWebService_Service();
    NewWebService customerProxy1 = service2.getNewWebServicePort();

    Vehicle vehicle = customerProxy1.getVehicleUserbyId("vehicle_no");


%>


<%@ include file="/User/UI/userMenu.jsp" %>    
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Booking Details</span>
        </div>

    </nav>  

    <div>
        <div>

            <div class="container" style="width: 450px; height:500px;">
                <form action="/GoCheetaBooking_Clienttier/User/Function/addOrderHelper.jsp" method="post" class="login-email">

                    <br><br>
                    <p class="login-text" style="font-size: 1.8rem; font-weight:800;margin-top:40px;">Add Booking</p>
                    <br>
                    <div class="input-group">
                        <input type="email" id="order_email" name="order_email" placeholder="Email Address" required> 
                    </div><br> 
                    <div class="input-group">
                        <input type="text" id="pick_location" name="pick_location" placeholder="Pick Location"  required>

                    </div><br>
                    <div class="input-group">
                        <input type="text" id="drop_loction" name="drop_loction" placeholder="Drop Location" required>

                    </div><br> 
                    <div class="input-group">          
                        <select id="area_branch" name="area_branch" style="font-size:0.9rem;margin-right:20px;width: 310px;">
                            <option>Select Branch</option>
                            <% for (Branch branch : branches) { %>

                            %>
                            <option>
                                <% out.print(branch.getBName());%>     
                            </option> 

                            <% } %>


                        </select>   
                    </div><br>
                    <div class="input-group">          
                        <select id="city" name="city" style="font-size:0.9rem;margin-right:20px;width: 310px;">
                            <option>Select City</option>
                            <option>Select City</option>
                            <% for (Branch branch : branches) { %>

                            %>
                            <option>
                                <% out.print(branch.getBName());%>     
                            </option> 

                            <% } %>

                        </select>   
                    </div><br>   

                    <div class="input-group">
                        <input type="text" id="price1" name="price1" placeholder="Price Rate" disabled><br>
                    </div><br> 

                    <div class="input-group">    
                        <input type="text" id="distance" name="distance" placeholder="Total Distance" required ><br>
                    </div><br>  
                    <div class="input-group">
                        <input type="text" id="mobile" name="mobile" placeholder="Customer Mobile" required >
                    </div><br>
                    <div class="input-group">
                        <input type="text" id="price" name="price" placeholder="Total Price" disabled ><br>
                    </div><br>
                    <div class="input-group">
                        <input type="date" id="time" name="time" placeholder="Choose Date" required style="font-size:0.9rem;margin-right:20px;width: 310px;"><br>
                    </div><br>    

                    <input type="hidden" id="vehicle_no" name="vehicle_no" placeholder="Vehicle No" value="<% out.print(vehicle.getVehicleNo()); %>" required>            
                    <input type="hidden" id="v_type" name="v_type" placeholder="Vehicle Type" required value="<% out.print(vehicle.getVehicalType()); %>" >
                    <input type="hidden" id="driver_mobile" name="driver_mobile" placeholder="Driver Mobile" value="<% out.print(vehicle.getDriverMobile());%>" required>


                    <div class="input-group">             
                        <input type="submit" value="Accept" class="btn">
                    </div> 
                </form>

            </div>
        </div>
    </div>    

</section>    


<script>
    var table = document.getElementById("table"), rIndex;

    for (var i = 0; i < table.rows.length; i++)
    {
        table.rows[i].onclick = function ()
        {
            rIndex = this.rowIndex;
            console.log(rIndex);

            document.getElementById("price1").value = this.cells[3].innerHTML;
        };
    }
</script>  


<script>
    $(document).ready(function () {
        // Get value on keyup funtion
        $("#price1, #distance").keyup(function () {

            var total = 0;
            var x = Number($("#price1").val());
            var y = Number($("#distance").val());
            var total = x * y;

            $('#price').val(total);

        });
    });
</script>

<script>
    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");
    sidebarBtn.onclick = function () {
        sidebar.classList.toggle("active");
        if (sidebar.classList.contains("active")) {
            sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
        } else
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }
</script>


</body>
</html>