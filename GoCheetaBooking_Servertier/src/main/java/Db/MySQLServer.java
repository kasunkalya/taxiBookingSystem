/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Db;

import Class.Branch;
import Class.Category;
import Class.Customer;
import Class.DBUtil;
import Class.Driver;
import Class.Dropdown;
import Class.Feedback;
import Class.User;
import Class.Vehicle;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MySQLServer implements DBUtil {
    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    public MySQLServer() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/gocheeta_db?allowPublicKeyRetrieval=true&useSSL=false&user=icbt&password=icbt");
        } catch(ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());            
        }
    }   
  
   //Driver
   @Override
    public boolean addDriver(Driver driver) {
               try {
            
            this.stmt  = this.con.prepareCall("INSERT INTO `driver` (`driver_mobile`, `driver_email`, `driver_name`, `driver_password`, `branch`, `time_type`) VALUES ('"+driver.getDriver_mobile()+"', '"+driver.getD_email()+"', '"+driver.getD_name()+"', '"+driver.getD_password()+"', '"+driver.getBranch()+"', '"+driver.getTime_type()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;                                                                                                        
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
   }
 
   @Override
    public List <Branch> getBranch() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM branch ;");

            List<Branch> branchs = new ArrayList<>();

            while (rs.next()) {
               Branch branch= new Branch(rs.getString("Branch"));
               branchs.add(branch);
            }
            
            return  branchs;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    //Cayegory with price

    @Override
    public List<Category> getPriceRate() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM category INNER JOIN price_rate ON price_rate.rate_id = category.rate_id ORDER BY category_id ASC;");
            
            List<Category> categorys = new ArrayList<>();

            while (rs.next()) {
                Category category = new Category(rs.getInt("category_id"), rs.getString("name"), rs.getInt("rate_id"), rs.getString("distance"), rs.getString("price"));
                   
                categorys.add(category);
            }
            
            return categorys;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    } 
  
    @Override
    public boolean deleteCategory(int category_id) {
        try {
            
            this.stmt  = this.con.prepareCall("DELETE FROM category WHERE category.category_id = " + category_id);
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public Category getCategorybyId(int category_id) {
        try {
            
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM category INNER JOIN price_rate ON price_rate.rate_id = category.rate_id WHERE category_id = " + category_id);
            
            if(rs.next()) {
                Category category = new Category(rs.getInt("category_id"), rs.getString("name"), rs.getString("distance"), rs.getString("price"));             
                
                return category;
            } else {
                return null;
            }
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    @Override  
    public boolean updateCategory(Category category) {
        try {
            
            this.stmt  = this.con.prepareCall("UPDATE `category` INNER JOIN `price_rate` ON category.rate_id = price_rate.rate_id SET `name` = '"+category.getName()+"',`distance` = '"+category.getDistance()+"',`price` = '"+category.getPrice()+"'  WHERE (`category_id` = '"+category.getCategory_id()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean addCategory(Category category) {
        try {
            
           this.stmt  = this.con.prepareCall("INSERT INTO `category` (`name`, `rate_id`) VALUES ('"+category.getName()+"', '"+category.getRate_id()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
       
    //Price rate
    
    @Override
    public List<Category> getPriceView() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM  price_rate  ORDER BY rate_id ASC;");
            
            List<Category> categorys = new ArrayList<>();

            while (rs.next()) {
                Category category = new Category(rs.getInt("rate_id"), rs.getString("distance"), rs.getString("price"));
                   
                categorys.add(category);
            }
            
            return categorys;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
     
    
    //Users Booking
   
    @Override
    public List<User> getUsers() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details ORDER BY order_id DESC;");

            List<User> users = new ArrayList<>();

            while (rs.next()) {
                
               User user= new User(rs.getInt("order_id"),rs.getString("order_mobile"),rs.getString("pick_location"), rs.getString("drop_location"), rs.getString("area_branch"), rs.getString("distance"), rs.getString("price"), rs.getString("time"), rs.getString("v_type"), rs.getString ("driver_mobile"), rs.getString("option"));
               users.add(user);
            }
            
            return users;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }  
    
    
 
     
    //feedback
        
  @Override
    public boolean addFeedback(Feedback feedback) {
        try {
            
            this.stmt  = this.con.prepareCall("INSERT INTO `feedback` (`subject`,`description`,`order_id`) VALUES ('"+feedback.getSubject()+"','"+feedback.getDescription()+"','"+feedback.getOrder_id()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public List<Feedback> getFeedback() {
     
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details INNER JOIN feedback ON feedback.order_id = booking_details.order_id WHERE category_id = \" + category_id); ORDER BY order_id DESC;");

            List<Feedback> feedbacks = new ArrayList<>();

            while (rs.next()) {
               Feedback feedback= new Feedback(rs.getInt("feedback_id"),rs.getString("subject"),rs.getString("description"),rs.getInt("order_id"));
               feedbacks.add(feedback);
            }
            
            return feedbacks;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }      

    @Override
    public List<Feedback> getViewFeedback() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    //Admin

    @Override
    public List<User> getViewFeedbacks() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM feedback INNER JOIN booking_details ON feedback.order_id = booking_details.order_id ORDER BY feedback_id ASC;");
            
            List<User> users = new ArrayList<>();

            while (rs.next()) {
                User user = new User(rs.getInt("feedback_id"),rs.getString("subject"),rs.getString("description"),rs.getString("order_mobile"),rs.getString("pick_location"), rs.getString("drop_location"), rs.getString("area_branch"), rs.getString("distance"), rs.getString("price"), rs.getString("time"), rs.getString("v_type"), rs.getString("driver_mobile"));
                users.add(user);
            }
            
            return users;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    //User Login
    @Override
    public boolean loginCustomer(String email, String password) {

      try {
            PreparedStatement ps;
            String sql = "SELECT * FROM customer WHERE email = ? and password = ?";
            ps = con.prepareStatement(sql);
           
            ps.setString(1,email);
            ps.setString(2, password);
            
            ResultSet result = ps.executeQuery();

            return result.next();

        } catch (SQLException ex) {
             System.out.println(ex.getMessage());
             return false;
        }
    }

    //Admin Login
    @Override
    public boolean loginAdmin(String email, String password) {

      try {
            PreparedStatement ps;
            String sql = "SELECT * FROM customer WHERE email ='admin@456' and password = '456admin@'";
            ps = con.prepareStatement(sql);
            
            ps.setString(1,email);
            ps.setString(2,password);
            
            ResultSet result = ps.executeQuery();

            return result.next();

        } catch (SQLException ex) {
             System.out.println(ex.getMessage());
             return false;
        }
    }
    
        //Users Booking
    @Override
        public List<User> getViewUsersBooks(String email) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details ORDER BY order_id WHERE customer.c_id = " + email);

            List<User> users = new ArrayList<>();

            while (rs.next()) {
//                System.err.println(rs.getInt("order_id"));
               User user= new User(rs.getInt("order_id"),rs.getString("order_mobile"),rs.getString("pick_location"), rs.getString("drop_location"), rs.getString("area_branch"), rs.getString("distance"), rs.getString("price"), rs.getString("time"), rs.getString("v_type"), rs.getString ("driver_mobile"), rs.getString("option"));
               users.add(user);
            }
            
            return users;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }  

    //Branch dowdown    
    @Override
    public List<Branch> getBranchDrop() {
 
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM  branch  ORDER BY branch_id ASC;");
            
            List<Branch> branches = new ArrayList<>();

            while (rs.next()) {
                Branch branch = new Branch(rs.getString("b_name"));
                   
                branches.add(branch);
            }
            
            return branches;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
        
    //Vehicle

    @Override
        public List<Vehicle> getAllVehicle() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM vehicle INNER JOIN driver ON driver.driver_mobile = vehicle.driver_mobile ORDER BY vehicle_no ASC;");
            
            List<Vehicle> vehicles = new ArrayList<>();

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getString("vehicle_no"),rs.getString("vehicle_model"),rs.getString("vehical_Type"),rs.getInt("driver_mobile"), rs.getString("branch"));
                   
                vehicles .add(vehicle);
            }
            
            return vehicles;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
        
   @Override
    public List<Vehicle> getViewAllVehicleDriver() {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM driver INNER JOIN vehicle ON vehicle.driver_mobile = driver.driver_mobile;");
            
            List<Vehicle> vehicles = new ArrayList<>();

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getString("vehicle_no"), rs.getString("vehical_Type"),
                        rs.getString("vehicle_model"), rs.getInt("driver_mobile"),
                        rs.getString("driver_name"), rs.getString("driver_email"),rs.getString("driver_password") ,
                        rs.getString("branch"), rs.getString("time_type"));
    
                vehicles.add(vehicle);
            }
            
            return vehicles;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
        
      //Vehicle Type dowdown    
    @Override
    public List<Dropdown> getVehicleTypeDrop() {
 
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT name FROM  category;");
            
            List<Dropdown> types = new ArrayList<>();

            while (rs.next()) {
                Dropdown type = new Dropdown(rs.getString("name"));
                  
                types.add(type);
            }
            
            return types;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
        
    //Add Vehicle
    @Override
    public boolean addVehicle(Vehicle vehicle) {
       try {
            
            this.stmt  = this.con.prepareCall("INSERT INTO `vehicle` (`driver_mobile`,`vehicle_no`, `vehical_Type`, `vehicle_model`) VALUES ('"+vehicle.getDriver_mobile()+"', '"+vehicle.getVehicle_no()+"', '"+vehicle.getVehical_Type()+"', '"+vehicle.getVehicle_model()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;                                                                                                        
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
   }
    
    @Override
    public Vehicle getDriverbyMobile(int driver_mobile) {
        try {
            
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM driver INNER JOIN vehicle ON vehicle.driver_mobile = driver.driver_mobile WHERE driver.driver_mobile = " + driver_mobile);
            
            if(rs.next()) {
                Vehicle vehicle = new Vehicle (rs.getString("vehicle_no"), rs.getString("vehical_Type"),
                        rs.getString("vehicle_model"), rs.getInt("driver_mobile"),
                        rs.getString("driver_name"), rs.getString("driver_email"), rs.getString("driver_password"), 
                        rs.getString("branch"), rs.getString("time_type"));
             
                 return vehicle;
            } else {
                return null;
            }
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    
      @Override
    public Driver getDriverbyEmail(String driver_email) {
        try {
            
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM driver INNER JOIN vehicle ON vehicle.driver_mobile = driver.driver_mobile WHERE driver.driver_email = " + driver_email);
            
            if(rs.next()) {
                Driver driver = new Driver ( rs.getInt("driver_mobile"),
                        rs.getString("driver_name"), rs.getString("driver_email"), rs.getString("driver_password"), 
                        rs.getString("branch"), rs.getString("time_type"));
             
                 return driver;
            } else {
                return null;
            }
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    

    @Override
    public boolean updateVehicleDriver(Vehicle vehicle) {

        try {
            
            this.stmt  = this.con.prepareCall("UPDATE `vehicle` INNER JOIN `driver` ON driver.driver_mobile = driver.driver_mobile SET `vehical_Type` = '"+vehicle.getVehical_Type()+"',`vehicle_model` = '"+vehicle.getVehicle_model()+"' WHERE (`vehicle_no` = '"+vehicle.getVehicle_no()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    @Override
    public boolean updateDriver(Driver driver) {

        try {
            
            this.stmt  = this.con.prepareCall("UPDATE `driver`  SET `driver_name` = '"+driver.getD_name()+"',`driver_password` = '"+driver.getD_password()+"',`branch` = '"+driver.getBranch()+"',`time_type` = '"+driver.getTime_type()+"' WHERE (`driver_email` = '"+driver.getD_email()+"');");
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    
    @Override
    public boolean deleteVehicleDriver(int driver_mobile) {
        try {
            
            this.stmt  = this.con.prepareCall("DELETE FROM vehicle WHERE vehicle.driver_mobile = " + driver_mobile);
        
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    @Override
    public boolean addCustomer(Customer cstmr) {
      try {

            this.stmt  = this.con.prepareCall("INSERT INTO `customer` (`email`, `name`, `mobile`, `password`) VALUES ('"+cstmr.getEmail()+"', '"+cstmr.getName()+"', '"+cstmr.getMobile()+"', '"+cstmr.getPassword()+"');");
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;                                                                                                        
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    @Override
    public boolean loginDriver(String email,String password) {

      try {
            PreparedStatement ps;
            String sql = "SELECT * FROM driver WHERE driver_email = ? and driver_password = ?";
            ps = con.prepareStatement(sql);
           
            ps.setString(1,email);
            ps.setString(2, password);
            
            ResultSet result = ps.executeQuery();

            return result.next();

        } catch (SQLException ex) {
             System.out.println(ex.getMessage());
             return false;
        }
    }

    //Admin Login
    @Override
    public boolean loginAdminDriver(String email, String password) {

      try {
            PreparedStatement ps;
            String sql = "SELECT * FROM driver WHERE driver_email ='admin@456' and driver_password  = '456admin@'";
            ps = con.prepareStatement(sql);
            
            ps.setString(1,email);
            ps.setString(2,password);
            
            ResultSet result = ps.executeQuery();

            return result.next();

        } catch (SQLException ex) {
             System.out.println(ex.getMessage());
             return false;
        }
    }

    
    //Order
     @Override
      public boolean addUserOrder(User user) {
        try {
            
        this.stmt  = this.con.prepareCall("INSERT INTO `booking_details`(`order_mobile`, `email`, `pick_location`, `drop_location`, `area_branch`, "
                + "`city`, `distance`, `price`, `time`, `vehicle_no`, `v_type`, `driver_mobile`,`option`) VALUES ('"+user.getMobile()+"', '"+user.getOrder_email()+"', "
                        + "'"+user.getPick_location()+"', '"+user.getDrop_loction()+"','"+user.getArea_branch()+"','"+user.getCity()+"', '"+user.getDistance()+"',"
                                + " '"+user.getPrice()+"', '"+user.getTime()+"', '"+user.getVehicle_no()+"', '"+user.getV_type()+"', '"+user.getDriver_mobile()+"','No Active');");
      
            //this.stmt  = this.con.prepareCall("INSERT INTO `booking_details`(`order_mobile`,`email`,`pick_location`,`drop_location`,`area_branch`,`city`,`distance`,`price`,`time`,`v_type`,`driver_mobile`,`option`) VALUES ('"+user.getMobile()+"','"+user.getOrder_email()+"','"+user.getPick_location()+"','"+user.getDrop_loction()+"','"+user.getArea_branch()+"','"+user.getDistance()+"','"+user.getPrice()+"','"+user.getTime()+"','"+user.getV_type()+"','"+user.getDriver_mobile()+"','No Active');");
            
            return ((PreparedStatement) this.stmt).executeUpdate() > 0;            
        } catch(SQLException e) {

            System.out.println(e.getMessage());
            return false;
        }
    }


    @Override
    public Vehicle getVehicleUserbyId(String vehicle_no) {

        try {
            
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM vehicle WHERE vehicle_no = " + vehicle_no);
            
            if(rs.next()) {
                Vehicle vehicle = new Vehicle(rs.getString("vehicle_no"), rs.getString("vehical_Type"), rs.getInt("driver_mobile"));             
                
                return vehicle;
            } else {
                return null;
            }
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    /* @Override
    public List<User> getActiveBookingDetails(String vehicle_no) {
      try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details WHERE booking_details.vehicle_no = " + vehicle_no); 

            List<User> users = new ArrayList<>();

            while (rs.next()) {


                User user = new User (rs.getInt("order_id"),rs.getString("order_mobile"),
                        rs.getString("pick_location"), rs.getString("drop_location"), 
                        rs.getString("distance"), rs.getString("price"), 
                        rs.getString("time"),
                        rs.getString("option"));
                users.add(user);
            }
            
            return users;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            
        }
    }*/
    
  /*  @Override
    public List<User> getActiveBookingDetails(String vehicle_no) {
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details WHERE vehicle_no = " + vehicle_no);

            List<User> users = new ArrayList<>();

            while (rs.next()) {
                
               User user= new User(rs.getInt("order_id"),rs.getString("order_mobile"),rs.getString("pick_location"), rs.getString("drop_location"), rs.getString("area_branch"), rs.getString("distance"), rs.getString("price"), rs.getString("time"), rs.getString("v_type"), rs.getString ("driver_mobile"), rs.getString("option"));
               users.add(user);
            }
            
            return users;
            
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    } 
    */
    
    @Override
    public User getActiveBookingDetails(String vehicle_no) {
        
        try {
            this.stmt  = this.con.createStatement();
            this.rs    = this.stmt.executeQuery("SELECT * FROM booking_details WHERE booking_details.vehicle_no = " + vehicle_no);

            if(rs.next()) {
                
               User user= new User(rs.getInt("order_id"),rs.getString("order_mobile"),rs.getString("pick_location"), rs.getString("drop_location"), rs.getString("area_branch"), rs.getString("distance"), rs.getString("price"), rs.getString("time"), rs.getString("v_type"), rs.getString ("driver_mobile"), rs.getString("option"));
               return user;
            }
            else{
               return null;
            }
          
   
        }catch(SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    

}