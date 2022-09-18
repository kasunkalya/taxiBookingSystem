/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;


public class Driver{
   
    private String d_email; 
    private String d_password;
    private String branch;
    private String d_name;
    private String time_type;
    private int driver_mobile;

    public Driver(int driver_mobile,String d_name,String d_email,String d_password,String branch,String time_type) {
        this.d_email = d_email;
        this.d_password = d_password;
        this.branch = branch;
        this.d_name = d_name;
        this.time_type = time_type;
        this.driver_mobile = driver_mobile;
    }
   
    
    public Driver(String d_email, String d_password, String branch, String time_type, int driver_mobile) {
        this.d_email = d_email;
        this.d_password = d_password;
        this.branch = branch;
        this.time_type = time_type;
        this.driver_mobile = driver_mobile;
    }
    
    public Driver(int driver_mobile,String d_name,String d_email,String branch, String time_type) {
        this.d_email = d_email;
        this.d_name = d_name;
        this.branch = branch;
        this.time_type = time_type;
        this.driver_mobile = driver_mobile;
    }
    
    
    public Driver(String d_email,String d_name,String d_password,String branch, String time_type) {
        this.d_email = d_email;
        this.d_name = d_name;
        this.branch = branch;
        this.time_type = time_type;
    }

    public Driver( int driver_mobile,String d_password) {
        this.d_password = d_password;
        this.driver_mobile = driver_mobile;
    }

    public Driver(String d_email,String d_password) {
        this.d_password = d_password;
        this.d_email = d_email;
    }
    
        
    public Driver(int driver_mobile) {
        this.driver_mobile = driver_mobile;
    } 

    
    public String getD_email() {
        return d_email;
    }

    public void setD_email(String d_email) {
        this.d_email = d_email;
    }

    public String getD_password() {
        return d_password;
    }

    public void setD_password(String d_password) {
        this.d_password = d_password;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getTime_type() {
        return time_type;
    }

    public void setTime_type(String time_type) {
        this.time_type = time_type;
    }

    public int getDriver_mobile() {
        return driver_mobile;
    }

    public void setDriver_mobile(int driver_mobile) {
        this.driver_mobile = driver_mobile;
    }

    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }
    
    

}