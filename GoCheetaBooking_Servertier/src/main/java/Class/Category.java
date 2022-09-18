/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;


public class Category {
    
    private int category_id;
    private int rate_id;
    private String name;
    private String distance;
    private String price;

    public Category(int category_id, String name, int rate_id, String distance, String price) {
        
        this.category_id = category_id;
        this.name = name;
        this.rate_id = rate_id;
        this.distance = distance;
        this.price = price;
    }

    public Category(int category_id, String name,int rate_id) {
        this.category_id = category_id;
        this.name = name;
        this.rate_id = rate_id;
    }

    public Category(int rate_id) {
        this.rate_id = rate_id;
    }
    

    public Category(int category_id, String name, String distance, String price) {
        
        this.category_id = category_id;
        this.name = name;
        this.distance = distance;
        this.price = price;
    }
   
    
    public Category(int rate_id, String distance, String price) {
        
        this.rate_id = rate_id;
        this.distance = distance;
        this.price = price;
    }
    
    public int getCategory_id() {
        return category_id;
    }

    public String getName() {
        return name;
    }

    public int getRate_id() {
        return rate_id;
    }

    public String getDistance() {
        return distance;
    }

    public String getPrice() {
        return price;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRate_id(int rate_id) {
        this.rate_id = rate_id;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public void setPrice(String price) {
        this.price = price;
    }

}
