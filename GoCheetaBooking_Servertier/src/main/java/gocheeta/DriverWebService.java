/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package gocheeta;

import Class.Branch;
import Class.DBUtil;
import Class.Driver;
import Class.User;
import Db.MySQLServer;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author HP
 */
@WebService(serviceName = "DriverWebService")
public class DriverWebService {
  
    DBUtil dbUtil = new MySQLServer();

    
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
     //Driver
     @WebMethod(operationName = "addDriver")
     public boolean addDriver(@WebParam(name = "driver_mobile") int driver_mobile,@WebParam(name = "d_email") String d_email,@WebParam(name = "d_name") String d_name,@WebParam(name = "d_password") String d_password, @WebParam(name = "branch") String branch, @WebParam(name = "time_type") String time_type) {
     Driver driver = new Driver(driver_mobile, d_email,d_name, d_password, branch, time_type);
     return this.dbUtil.addDriver(driver);
    
     }
     
    //Branch
     
     @WebMethod(operationName = "getBranchDrop")
     public List<Branch> getBranchDrop() {
      
         return this.dbUtil.getBranchDrop();
    }
     
   @WebMethod(operationName = "getActiveBookingDetails")
    public User getActiveBookingDetails(@WebParam(name = "vehicle_no") String vehicle_no) {
        return this.dbUtil.getActiveBookingDetails(vehicle_no);
   }

}
