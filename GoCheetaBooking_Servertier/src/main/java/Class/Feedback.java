/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;


public class Feedback {
    public int order_id;
    public int feedback_id;
    public String subject;
    public String description;

    public Feedback(int feedback_id, String subject, String description,int order_id) {
        this.order_id = order_id;
        this.feedback_id = feedback_id;
        this.subject = subject;
        this.description = description;
    }

    public int getOrder_id() {
        return order_id;
    }

    public int getFeedback_id() {
        return feedback_id;
    }

    public String getSubject() {
        return subject;
    }

    public String getDescription() {
        return description;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public void setFeedback_id(int feedback_id) {
        this.feedback_id = feedback_id;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    
}
