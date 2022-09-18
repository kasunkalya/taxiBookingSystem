/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

public class Dropdown {
    
     private String vehicle_no;
     private String vehical_Type;
     private String vehicle_model;
     private int driver_mobile;

    public Dropdown(String vehicle_no, String vehical_Type, String vehicle_model, int driver_mobile) {
        this.vehicle_no = vehicle_no;
        this.vehical_Type = vehical_Type;
        this.vehicle_model = vehicle_model;
        this.driver_mobile = driver_mobile;
    }

    public Dropdown(String vehical_Type) {
        this.vehical_Type = vehical_Type;
    }

    public String getVehicle_no() {
        return vehicle_no;
    }

    public String getVehical_Type() {
        return vehical_Type;
    }

    public String getVehicle_model() {
        return vehicle_model;
    }

    public int getDriver_mobile() {
        return driver_mobile;
    }

    public void setVehicle_no(String vehicle_no) {
        this.vehicle_no = vehicle_no;
    }

    public void setVehical_Type(String vehical_Type) {
        this.vehical_Type = vehical_Type;
    }

    public void setVehicle_model(String vehicle_model) {
        this.vehicle_model = vehicle_model;
    }

    public void setDriver_mobile(int driver_mobile) {
        this.driver_mobile = driver_mobile;
    }

     
}
