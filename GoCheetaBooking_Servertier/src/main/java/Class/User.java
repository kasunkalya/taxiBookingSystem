/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Class;

   public class User extends Person {
    
    public int order_Id;
    private String pick_location;
    private String drop_loction;
    private String area_branch;
    private String distance;
    private String price;
    private String time;
    private String v_type;
    private String city;
    private String driver_mobile;
    private String option="No Active";
    
    private String vehicle_no;
    
    private int feedback_id;
    private String subject;
    private String description;
    private String order_email;

    /*public User(int order_Id, String pick_location, String drop_loction, String area_branch, String distance, String price, String time, String v_type, String driver_mobile, int feedback_id, String subject, String description, String mobile,String order_email) {
        super(mobile);
        this.order_Id = order_Id;
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
        this.area_branch = area_branch;
        this.distance = distance;
        this.price = price;
        this.time = time;
        this.v_type = v_type;
        this.driver_mobile = driver_mobile;
        this.feedback_id = feedback_id;
        this.subject = subject;
        this.description = description;
        this.order_email=order_email;
    }*/
    
    public User(int order_Id, String pick_location, String drop_loction, String area_branch, String distance, String price, String time, String v_type, String driver_mobile, int feedback_id, String subject, String description, String mobile) {
        super(mobile);
        this.order_Id = order_Id;
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
        this.area_branch = area_branch;
        this.distance = distance;
        this.price = price;
        this.time = time;
        this.v_type = v_type;
        this.driver_mobile = driver_mobile;
        this.feedback_id = feedback_id;
        this.subject = subject;
        this.description = description;
    }
    
    public User(int order_Id,String mobile,String pick_location, String drop_loction, String area_branch, String distance,String price,String time,String v_type,String driver_mobile,String option) {
        super(mobile);
        this.order_Id = order_Id;
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
        this.area_branch = area_branch;
        this.distance = distance;
        this.price = price;
        this.time = time;
        this.option = option;
        this.v_type = v_type;
        this.driver_mobile = driver_mobile; 
    }

    public User(String pick_location, String drop_loction, String mobile) {
        super(mobile);
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
    }

    public User(int feedback_id, String subject, String description, String mobile,String pick_location, String drop_loction, String area_branch, String distance, String price, String time, String v_type, String driver_mobile) {
        super(mobile);
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
        this.area_branch = area_branch;
        this.distance = distance;
        this.price = price;
        this.time = time;
        this.v_type = v_type;
        this.driver_mobile = driver_mobile;
        this.feedback_id = feedback_id;
        this.subject = subject;
        this.description = description;
    }
 
       public User(int order_Id, String mobile,String order_email, String pick_location, String drop_loction,String city ,String area_branch, String distance, String price, String time, String v_type, String driver_mobile,String option) {
        super(mobile);
        this.order_Id = order_Id;
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
        this.area_branch = area_branch;
        this.distance = distance;
        this.price = price;
        this.time = time;
        this.v_type = v_type;
        this.order_email = order_email;
        this.city = city;
        this.driver_mobile = driver_mobile;
        this.option = option;
       }

       
        
       public User(int order_Id, String mobile,String order_email, String pick_location, String drop_loction,String city ,String area_branch, String distance, String price, String time, String vehicle_no,String v_type, String driver_mobile,String option) {
        super(mobile);
        this.order_Id = order_Id;
        this.pick_location = pick_location;
        this.drop_loction = drop_loction;
        this.area_branch = area_branch;
        this.distance = distance;
        this.price = price;
        this.time = time;
        this.v_type = v_type;
        this.order_email = order_email;
        this.city = city;
        this.driver_mobile = driver_mobile;
        this.option = option;
        this.vehicle_no = vehicle_no;
       }
    
    public String getPick_location() {
        return pick_location;
    }

    public void setPick_location(String pick_location) {
        this.pick_location = pick_location;
    }

    public String getDrop_loction() {
        return drop_loction;
    }

    public void setDrop_loction(String drop_loction) {
        this.drop_loction = drop_loction;
    }

    public String getArea_branch() {
        return area_branch;
    }

    public void setArea_branch(String area_branch) {
        this.area_branch = area_branch;
    }

    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getV_type() {
        return v_type;
    }

    public void setV_type(String v_type) {
        this.v_type = v_type;
    }

    public String getDriver_mobile() {
        return driver_mobile;
    }

    public void setDriver_mobile(String driver_mobile) {
        this.driver_mobile = driver_mobile;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public int getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(int feedback_id) {
        this.feedback_id = feedback_id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getOrder_email() {
        return order_email;
    }

    public void setOrder_email(String order_email) {
        this.order_email = order_email;
    }

    public String getVehicle_no() {
        return vehicle_no;
    }

    public void setVehicle_no(String vehicle_no) {
        this.vehicle_no = vehicle_no;
    }

    
   
}