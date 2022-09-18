/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package gocheeta;

import Class.Customer;
import Class.DBUtil;
import Class.User;
import Class.Vehicle;
import Db.MySQLServer;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author HP
 */
@WebService(serviceName = "UserWebService")
public class UserWebService {

     DBUtil dbUtil = new MySQLServer();
    
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    @WebMethod(operationName = "loginCustomer")
    public boolean loginCustomer(@WebParam(name = "email") String email,@WebParam(name = "password") String password) {
        //Customer customer = new Customer(email,password);
        return this.dbUtil.loginCustomer(email,password);
    } 
    
    @WebMethod(operationName = "loginAdmin")
    public boolean loginAdmin(@WebParam(name = "email") String email,@WebParam(name = "password") String password) {
        return this.dbUtil.loginAdmin(email,password);
    } 
    
    //Vehicle
    @WebMethod(operationName = "getAllVehicle")
    public List<Vehicle> getAllVehicle() {
        return this.dbUtil.getAllVehicle();
    } 
    
    //userBook View
    @WebMethod(operationName = "getViewUsersBooks")
    public List<User> getViewUsersBooks(String email) {
        return this.dbUtil.getViewUsersBooks(email);
    }
    
    //customer register
     @WebMethod(operationName = "addCustomer")
     public boolean addCustomer(@WebParam(name = "email") String email,@WebParam(name = "name") String name,@WebParam(name = "mobile") String mobile,@WebParam(name = "password") String password) {
     Customer customer = new Customer(email,name,mobile,password);
     return this.dbUtil.addCustomer(customer);
    
     }
     
    @WebMethod(operationName = "loginDriver")
    public boolean loginDriver(@WebParam(name = "email") String email,@WebParam(name = "password") String password) {
        return this.dbUtil.loginDriver(email,password);
    } 
    
   @WebMethod(operationName = "addUserOrder")
     public boolean addUserOrder(@WebParam(name = "mobile") String mobile,@WebParam(name = "order_email") String order_email,@WebParam(name = "pick_location") String pick_location,
             @WebParam(name = "drop_loction") String drop_loction,@WebParam(name = "city") String city,@WebParam(name = "area_branch") String area_branch 
             ,@WebParam(name = "distance") String distance,@WebParam(name = "price") String price,@WebParam(name = "time") String time
             ,@WebParam(name = "vehicle_no") String vehicle_no,@WebParam(name = "v_type") String v_type,@WebParam(name = "driver_mobile") String driver_mobile,@WebParam(name = "option") String option) 
     {  
    
     User user = new User(0,mobile,order_email,pick_location,drop_loction,city,area_branch,distance,price,time,vehicle_no,v_type,driver_mobile,option);
     return this.dbUtil.addUserOrder(user);
    
     }
     
}
