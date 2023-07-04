/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class OrderHistory {
    private Integer cid;
    private String img;
    private String product_name;
    private float price;
    private int quantity;
    private double total;
    private int status;

    public OrderHistory() {
    }

    public OrderHistory(Integer cid, String img, String product_name, float price, int quantity, double total,int status) {
        this.cid = cid;
        this.img = img;
        this.product_name = product_name;
        this.price = price;
        this.quantity = quantity;
        this.total = total;
        this.status=status;
    }
     public OrderHistory(String img, String product_name, float price, int quantity, double total, int status) {
        this.cid = null;
        this.img = img;
        this.product_name = product_name;
        this.price = price;
        this.quantity = quantity;
        this.total = total;
        this.status=status;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

   
    
    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
     
    
    
}
