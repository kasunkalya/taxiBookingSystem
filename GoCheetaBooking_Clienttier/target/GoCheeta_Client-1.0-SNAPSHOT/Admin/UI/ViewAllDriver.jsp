<%@page import="gocheeta.Vehicle"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService vehicleProxy = service.getNewWebServicePort();
    
    List<Vehicle> vehicles = vehicleProxy.getViewAllVehicleDriver();
        
%>

<%@ include file="/Admin/UI/adminMenu.jsp" %>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        
        <style>
            .tableFixHead {
	    overflow-y: auto;
	    height:500px;
         
            margin-left:40px;
	  }
            .tableFixHead thead th {
	    position: sticky;
            top: 0;
	  }
        </style>
        <section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Driver Details</span>
        </div>

    </nav>  
    <div>
        <br> <br> <br> <br>
        <div>
 
        <a href="../UI/AddNewDriver.jsp" class="btn btn-info" style="width:80px;height:40px;text-align:center;margin-left:12%;margin-top:5%">Add</a>
       
        <div class="input-group">
        <input type="text" id="myInput" onkeyup='tableSearch()' placeholder="Name" style="padding:10px;width:40%;margin-left:50%;border-radius:30px;border: 2px solid #e7e7e7;padding: 12px 20px;
               font-size: 1rem;border-radius: 30px;background: transparent;outline: none;transition: .3s;"><img src="/GoCheeta_Client/image/icon/search.png" style="width:35px;height:35px;margin-left:-50px;margin-top:8px;">
        </div>
        <div class="tableFixHead" >
        <table  class="table table-bordered" id="myTable" data-filter-control="true" data-show-search-clear-button="true" style="width:80%;margin-left:15%;margin-right:2%;margin-left:10%;margin-top:2%">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Vehicle No</th>
                <th scope="col"style="text-align:center; ">Vehicle Type</th>
                <th scope="col"style="text-align:center; ">Vehicle Model</th>
                <th scope="col"style="text-align:center; ">Driver Mobile</th>
                <th scope="col"style="text-align:center; ">Driver Name</th>
                <th scope="col"style="text-align:center; ">Driver Email</th>
                <th scope="col"style="text-align:center; ">Branch</th>
                <th scope="col"style="text-align:center; ">Option</th>
                <th scope="col"style="text-align:center; ">Action</th>
         
            </thead>
        <tbody>
            <% for(Vehicle vehicle:vehicles){ %>
            <tr> 
                <td style="width:15%;text-align: center"><% out.print(vehicle.getVehicleNo()); %></td>
                <td><% out.print(vehicle.getVehicalType()); %></td>
                <td><% out.print(vehicle.getVehicleModel()); %></td>
                <td><% out.print(vehicle.getDriverMobile()); %></td>
                <td><% out.print(vehicle.getDName()); %></td>
                <td><% out.print(vehicle.getDEmail()); %></td>
                <td><% out.print(vehicle.getBranch()); %></td>
                <td><% out.print(vehicle.getTimeType()); %></td> 
                <td style="width:30%;text-align: center">
                   <a href="/GoCheeta_Client/Admin/Function/editVehicleDriverDetails.jsp?id=<% out.print(vehicle.getDriverMobile()); %>" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</a>
                   <a href="/GoCheeta_Client/Admin/controller/deleteVehicle.jsp?id=<% out.print(vehicle.getDriverMobile()); %>" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Delete</a>
                </td>
            </tr>
            <% } %>
           
        </tbody>
    </table> 
    </div>
        <script type="application/javascript">
        function tableSearch() {
            let input, filter, table, tr, td, txtValue;

            //Intialising Variables
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");

            for (let i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }

        }
    </script>
        
        </div>
    </div>    

</section>   