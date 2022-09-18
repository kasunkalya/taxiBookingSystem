/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

public class Customer extends Person {

    private String password;

    public Customer(String email, String name,String mobile,String password) {
        super(name, email, mobile);
        this.password = password;
    }

    public Customer(String name, String email, String mobile) {
        super(name, email, mobile);   
    }


    public Customer(String email,String password) {
        super(email);
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}