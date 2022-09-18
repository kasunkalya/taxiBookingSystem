




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
        
        <style>
            .tableFixHead {
	    overflow-y: auto;
	    height:600px;
         
            margin-left:40px;
	  }
            .tableFixHead thead th {
	    position: sticky;
            top: 0;
	  }
        </style>
    </head>
    <body>
    <div class="tableFixHead">
        <table  class="table table-bordered" style="width:90%;margin-left:3%;margin-right:3%;margin-top:12%" id="myTable">
            <thead>
                <th scope="col"style="width:10%;text-align:center; ">Category ID</th>
                <th scope="col"style="text-align:center; ">Category Name</th>            
                <th scope="col"style="text-align:center; ">Price (per.1KM)</th>
                <th scope="col"style="text-align:center; ">Action</th>
         
            </thead>
        <tbody>
          
            <tr> 
                <td style="width:15%;text-align: center">1</td>
                <td>Car</td>
                <td>100</td>
            
             
                <td style="width:30%;text-align: center">
                   <a href="/GoCheetaBooking_Clienttier/Category/function/editCategory.jsp?id=" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</a>
                   <a href="/GoCheetaBooking_Clienttier/Category/controller/deleteCategory.jsp?id=" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Delete</a>
                </td>
            </tr>
             <tr> 
                <td style="width:15%;text-align: center">2</td>
                <td>Van</td>
                <td>300</td>
            
             
               <td style="width:30%;text-align: center">
                   <a href="/GoCheetaBooking_Clienttier/Category/function/editCategory.jsp?id=" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</a>
                   <a href="/GoCheetaBooking_Clienttier/Category/controller/deleteCategory.jsp?id=" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Delete</a>
                </td>
            </tr>
            <tr> 
                <td style="width:15%;text-align: center">3</td>
                <td>Bus</td>
                <td>400</td>
            
             
                <td style="width:30%;text-align: center">
                   <a href="/GoCheetaBooking_Clienttier/Category/function/editCategory.jsp?id=" class="btn btn-primary"style="width:80px;height:40px;text-align:center;margin-right:5px;">Update</a>
                   <a href="/GoCheetaBooking_Clienttier/Category/controller/deleteCategory.jsp?id=" class="btn btn-danger" style="width:80px;height:40px;text-align:center;margin-left:5px;">Delete</a>
                </td>
            </tr>
        </tbody>
    </table> 
    </div>   
</html>