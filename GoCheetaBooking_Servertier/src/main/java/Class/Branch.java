/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

public class Branch {
    
    String branch_id;
    String b_name;

    public Branch(String branch_id, String b_name) {
        this.branch_id = branch_id;
        this.b_name = b_name;
    }
    
     public Branch(String b_name) {
        this.b_name = b_name;
    }

    public String getBranch_id() {
        return branch_id;
    }

    public String getB_name() {
        return b_name;
    }

    public void setBranch_id(String branch_id) {
        this.branch_id = branch_id;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }
    
    
}
