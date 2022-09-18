/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

import java.util.List;

public interface  DBUtil {
    
 // customer
 /*   public boolean addCustomer(Customer customer);
    public List<Customer> getCustomers();
    public boolean deleteCustomer(int customerId);
    public Customer getCustomerbyId(int customerId);
    public boolean updateCustomer(Customer customer);*/
    
//user booking
    public List<User> getUsers(); 
    
//Driver    
    public boolean addDriver(Driver driver);
    
//Branch
    public List<Branch> getBranch();
    
//Category with prices    
    public List<Category>getPriceRate();
    public boolean deleteCategory(int category_id);
    public boolean updateCategory(Category category);
    public Category getCategorybyId(int category_id);
    public boolean addCategory(Category category);  
    
 //Price Rate
     public List<Category>getPriceView();
    
 //Vehicles
    public List<Vehicle>getAllVehicle();
     
  //Feedback
   public boolean addFeedback(Feedback feedback);
   public List<Feedback>getViewFeedback();
   public List<Feedback> getFeedback();
   
   
   //Admin
   public List<User>getViewFeedbacks();
   
   //User

    public boolean loginCustomer(String email, String password);
    public boolean loginAdmin(String email, String password);
    
    //user booking
    public List<User> getViewUsersBooks(String email);
    
    
    //Branch Dropdown
    public List<Branch>getBranchDrop();
       
    //ViewAll Vehicle and driver
    public List<Vehicle> getViewAllVehicleDriver();
   
    //Vehicle type Dropdown
    public List<Dropdown>getVehicleTypeDrop();
   
    //Vehicle add   
    public boolean addVehicle(Vehicle vehicle);
    
    //Vehicle and driver details update
    public Vehicle getDriverbyMobile(int driver_mobile);
    public boolean updateVehicleDriver(Vehicle vehicle);
    public boolean deleteVehicleDriver(int driver_mobile);
    public boolean updateDriver(Driver driver);
    public Driver getDriverbyEmail(String driver_email);
    
    //Customer    
    public boolean addCustomer(Customer customer);

    
    public boolean loginDriver(String email, String password);
    public boolean loginAdminDriver(String email,String d_password);
    
    
    //Add Order
    public boolean addUserOrder(User user);

    public Vehicle getVehicleUserbyId(String vehicle_no);

    //Driver Booking Details view
    public User getActiveBookingDetails(String vehicle_no);

}

