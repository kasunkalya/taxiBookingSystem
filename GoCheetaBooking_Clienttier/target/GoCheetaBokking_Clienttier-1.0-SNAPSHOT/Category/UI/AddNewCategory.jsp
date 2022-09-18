
<%@page import="gocheeta.Category"%>
<%@page import="gocheeta.NewWebService_Service"%>
<%@page import="gocheeta.NewWebService"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService customerProxy = service.getNewWebServicePort();
    
    List<Category> categorys = customerProxy.getPriceView();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
           
        <form action="/GoCheetaBooking_Clienttier/Category/controller/addCategory.jsp" method="post" style="margin-left:30%;margin-right:10%;margin-top:10%;width:50%;">
          
            <label style="font-family:fantasy;text-align:center;font-size:25px;  ">Add Category</label>
             <div div class="form-group">      
             <label for="fname">Category Name</label><br>
             <input type="text" id="name" name="name" class="form-control" placeholder="Name" required><br>
            </div>  
             
            <div div class="form-group">       
            <label for="distance">Distance</label><br>
            <input type="text" id="distance" name="distance" class="form-control" placeholder="Distance" required><br>
            </div>
                
            <div div class="form-group">        
            <label for="mobile">Price</label><br>
            <input type="text" id="price" name="price" class="form-control" placeholder="Price" required><br>
            </div>
                
            <div div class="form-group">    
            <input type="hidden" id="rate_id" name="rate_id" placeholder="rate_id" required><br>
            </div>  
           

            <input type="submit" value="Add" class="btn btn-primary" style="width:100px;height:40px;">
            
        </form>
       </div>
  
          
           <table id="table">
            <thead>
                <th>Rate ID</th>
                <th>Distance</th>
                <th>Price</th>  
            </thead>
        <tbody>
            <% for(Category category : categorys){ %>
            <tr>
                <td><% out.print(category.getRateId()); %></td>
                <td><% out.print(category.getDistance()); %></td>
                <td><% out.print(category.getPrice()); %></td>     
            </tr>
            <% } %>
        </tbody>
    </table>
        
        <script>
            var table = document.getElementById("table"),rIndex;
            
           for(var i = 0; i < table.rows.length;i++)
           {
                table.rows[i].onclick = function()
              {
                rIndex =this.rowIndex;
                console.log(rIndex);
                
                document.getElementById("rate_id").value=this.cells[0].innerHTML;
                document.getElementById("distance").value=this.cells[1].innerHTML;
              document.getElementById("price").value=this.cells[2].innerHTML;
            }; 
           }
        </script>  
        
        
        
    </body>
</html>
