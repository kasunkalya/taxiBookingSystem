/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

public class Vehicle extends Driver{
    
     private String vehicle_no;
     private String vehical_Type;
     private String vehicle_model;
     private String Branch_name;

    public Vehicle(String vehicle_no,String vehical_Type, String vehicle_model, String d_email, String d_password, String branch, String time_type, int driver_mobile) {
        super(d_email, d_password, branch, time_type, driver_mobile);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }

    public Vehicle(String vehicle_no, String vehical_Type, String vehicle_model, int driver_mobile, String d_name, String d_email,String d_password,String branch, String time_type) {
        super(driver_mobile, d_name, d_email, branch, time_type);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }
    
     public Vehicle(String vehicle_no, String vehical_Type, String vehicle_model, String d_name, String d_email,String d_password,String branch, String time_type) {
        super(d_email,d_name,d_password, branch, time_type);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }
    
    public Vehicle(String vehicle_no, String vehical_Type, String vehicle_model, int driver_mobile, String d_name, String d_email,String branch, String time_type) {
        super(driver_mobile, d_name, d_email, branch, time_type);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }
    
    public Vehicle(String vehicle_no,String vehicle_model, String vehical_Type,String branch,int driver_mobile) {
        super(driver_mobile,branch);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }
    
    public Vehicle(String vehicle_no,String vehicle_model, String vehical_Type,int driver_mobile,String Branch_name) {
        super(driver_mobile);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
        this.Branch_name=Branch_name;
    }

     public Vehicle(int driver_mobile,String vehicle_no, String vehical_Type, String vehicle_model) {
        super(driver_mobile);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
    }

    public Vehicle(String vehicle_no, String vehical_Type,int driver_mobile) {
        super(driver_mobile);
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
    }
 
    public String getVehicle_no() {
        return vehicle_no;
    }

    public String getVehical_Type() {
        return vehical_Type;
    }

    public void setVehicle_no(String vehicle_no) {
        this.vehicle_no = vehicle_no;
    }

    public void setVehical_Type(String vehical_Type) {
        this.vehical_Type = vehical_Type;
    }

    public String getVehicle_model() {
        return vehicle_model;
    }

    public void setVehicle_model(String vehical_model) {
        this.vehicle_model = vehical_model;
    }

    public String getBranch_name() {
        return Branch_name;
    }

    public void setBranch_name(String Branch_name) {
        this.Branch_name = Branch_name;
    }
  
    
}
