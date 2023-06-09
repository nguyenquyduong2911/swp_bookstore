/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.List;

/**
 *
 * @author taote
 */
public class Item {
    private Book_Cart product;
    private int quantity;
    private double price;

    public Item() {
    }

    public Item(Book_Cart product, int quantity, double price) {
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public Book_Cart getProduct() {
        return product;
    }

    public void setProduct(Book_Cart product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    public int getQuantityById(int productId, List<Item> items) {
    for (Item item : items) {
        if (item.getProduct().getId() == productId) {
            return item.getQuantity();
        }
    }
    return 0; // Return 0 if no item with the specified product ID is found
}

    @Override
    public String toString() {
        return "InfoCart{" + "product=" + product + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
}
