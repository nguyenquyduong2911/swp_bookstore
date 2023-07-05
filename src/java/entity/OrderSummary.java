/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Date;


/**
 *
 * @author Admin
 */
public class OrderSummary {
    private Integer id;
    private int book_count;
    private Date date;
    private int status;
    private float total_price;

    public OrderSummary() {
    }

    public OrderSummary(Integer id, int book_count, Date date, int status, float total_price) {
        this.id = id;
        this.book_count = book_count;
        this.date = date;
        this.status = status;
        this.total_price = total_price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getBook_count() {
        return book_count;
    }

    public void setBook_count(int book_count) {
        this.book_count = book_count;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public float getTotal_price() {
        return total_price;
    }

    public void setTotal_price(float total_price) {
        this.total_price = total_price;
    }
    
    
}
