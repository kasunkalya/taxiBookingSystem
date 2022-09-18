/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package gocheeta;

import Class.Branch;
import Class.Category;
import Class.DBUtil;
import Class.Driver;
import Class.Dropdown;
import Class.Feedback;
import Class.User;
import Class.Vehicle;
import Db.MySQLServer;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService(serviceName = "NewWebService")
public class NewWebService {

    DBUtil dbUtil = new MySQLServer();

    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }


    //user
    @WebMethod(operationName = "getUsers")
    public List<User> getUsers() {
        return this.dbUtil.getUsers();
    }
    
    //Branch
    @WebMethod(operationName = "getBranch")
    public List<Branch> getBranch() {
        return this.dbUtil.getBranch();
    }

    //Category with prices
    @WebMethod(operationName = "getPriceRate")
    public List<Category> getPriceRate() {
        return this.dbUtil.getPriceRate();
    }

    @WebMethod(operationName = "deleteCategory")
    public boolean deleteCategory(@WebParam(name = "category_id") int category_id) {
        return this.dbUtil.deleteCategory(category_id);
    }

    @WebMethod(operationName = "updateCategory")
    public boolean updateCategory(@WebParam(name = "category_id") int category_id, @WebParam(name = "name") String name, @WebParam(name = "distance") String distance, @WebParam(name = "price") String price) {
        Category category = new Category(category_id, name, distance, price);
        return this.dbUtil.updateCategory(category);
    }

    @WebMethod(operationName = "getCategorybyId")
    public Category getCategorybyId(@WebParam(name = "category_id") int category_id) {
        return this.dbUtil.getCategorybyId(category_id);
    }

    @WebMethod(operationName = "addCategory")
    public boolean addCategory(@WebParam(name = "name") String name, @WebParam(name = "rate_id") int rate_id) {
        Category category = new Category(0, name, rate_id);
        return this.dbUtil.addCategory(category);
    }

    //Price rate
    @WebMethod(operationName = "getPriceView")
    public List<Category> getPriceView() {
        return this.dbUtil.getPriceView();
    }

    //Vehicle
    @WebMethod(operationName = "getAllVehicle")
    public List<Vehicle> getAllVehicle() {
        return this.dbUtil.getAllVehicle();
    }

    //Feedback
    @WebMethod(operationName = "addFeedback")
    public boolean addFeedback(@WebParam(name = "subject") String subject, @WebParam(name = "description") String description, @WebParam(name = "order_id") int order_Id) {
        Feedback feedback = new Feedback(0, subject, description, order_Id);
        return this.dbUtil.addFeedback(feedback);
    }
    
    @WebMethod(operationName = "getViewFeedbacks")
    public List<User> getViewFeedbacks() {
        return this.dbUtil.getViewFeedbacks();
    }

    @WebMethod(operationName = "getViewAllVehicleDriver")
    public List<Vehicle> getViewAllVehicleDriver() {
        return this.dbUtil.getViewAllVehicleDriver();
    }

    //Vehicle type dropdown
     
     @WebMethod(operationName = "getVehicleTypeDrop")
     public List<Dropdown> getVehicleTypeDrop() {
      
         return this.dbUtil.getVehicleTypeDrop();
    }
    
    //Vehicle Add
     
     @WebMethod(operationName = "addVehicle")
     public boolean addVehicle(@WebParam(name = "driver_mobile") int driver_mobile,@WebParam(name = "vehicle_no") String vehicle_no,@WebParam(name = "vehical_Type") String vehical_Type,@WebParam(name = "vehicle_model") String vehicle_model) {
     Vehicle vehicle = new Vehicle(driver_mobile,vehicle_no, vehical_Type,vehicle_model);
     return this.dbUtil.addVehicle(vehicle);
     
     }
     
     //Update Vehicle details with driver details

    @WebMethod(operationName = "getDriverbyMobile")
    public Vehicle getDriverbyMobile(@WebParam(name = "driver_mobile") int driver_mobile) {
        return this.dbUtil.getDriverbyMobile(driver_mobile);
    }

    @WebMethod(operationName = "updateVehicleDriver")
    public boolean updateVehicleDriver(@WebParam(name = "vehicle_no") String vehicle_no,@WebParam(name = "vehical_Type") String vehical_Type,
        @WebParam(name = "vehicle_model") String vehicle_model,@WebParam(name = "d_name") String d_name,
        @WebParam(name = "d_email") String d_email,@WebParam(name = "d_password") String d_password,@WebParam(name = "branch") String branch, @WebParam(name = "time_type") String time_type) {
        Vehicle vehicle = new Vehicle(vehicle_no, vehical_Type,vehicle_model,d_name,d_email,d_password,branch, time_type);
        return this.dbUtil.updateVehicleDriver(vehicle);
    }
    
    @WebMethod(operationName = "updateDriver")
    public boolean updateDriver(@WebParam(name = "d_name") String d_name,
        @WebParam(name = "d_email") String d_email,@WebParam(name = "d_password") String d_password,@WebParam(name = "branch") String branch, @WebParam(name = "time_type") String time_type) {
        Driver driver = new Driver(d_email,d_name,d_password,branch, time_type);
        return this.dbUtil.updateDriver(driver);
    }
    
    @WebMethod(operationName = "getDriverbyEmail")
    public Driver getDriverbyEmail(@WebParam(name = "driver_email") String driver_email) {
        return this.dbUtil.getDriverbyEmail(driver_email);
    }
    
    
    @WebMethod(operationName = "deleteVehicleDriver")
    public boolean deleteVehicleDriver(@WebParam(name = "driver_mobile") int driver_mobile) {
        return this.dbUtil.deleteVehicleDriver(driver_mobile);
    }

    @WebMethod(operationName = "getVehicleUserbyId")
    public Vehicle getVehicleUserbyId(@WebParam(name = "vehicle_no") String vehicle_no) {
        return this.dbUtil.getVehicleUserbyId(vehicle_no);
    }
       
}
