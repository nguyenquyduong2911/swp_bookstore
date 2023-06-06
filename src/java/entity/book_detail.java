/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author taote
 */
public class book_detail {
    private int id;
    private String name;
    private String supplier;
    private String publisher;
    private String cover_form;
    private String price;
    private String author;
    private String year_publish;
    private String language;
    private String weight;
    private String package_size;
    private String num_page;
    private String description;
    private String image;

    public book_detail() {
    }

    public book_detail(int id, String name, String supplier, String publisher, String cover_form, String price, String author, String year_publish, String language, String weight, String package_size, String num_page, String description, String image) {
        this.id = id;
        this.name = name;
        this.supplier = supplier;
        this.publisher = publisher;
        this.cover_form = cover_form;
        this.price = price;
        this.author = author;
        this.year_publish = year_publish;
        this.language = language;
        this.weight = weight;
        this.package_size = package_size;
        this.num_page = num_page;
        this.description = description;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getCover_form() {
        return cover_form;
    }

    public void setCover_form(String cover_form) {
        this.cover_form = cover_form;
    }

    public String getPrice() {
        return price;
    }
  

    public void setPrice(String price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getYear_publish() {
        return year_publish;
    }

    public void setYear_publish(String year_publish) {
        this.year_publish = year_publish;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getPackage_size() {
        return package_size;
    }

    public void setPackage_size(String package_size) {
        this.package_size = package_size;
    }

    public String getNum_page() {
        return num_page;
    }

    public void setNum_page(String num_page) {
        this.num_page = num_page;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "book_detail{" + "id=" + id + ", name=" + name + ", supplier=" + supplier + ", publisher=" + publisher + ", cover_form=" + cover_form + ", price=" + price + ", author=" + author + ", year_publish=" + year_publish + ", language=" + language + ", weight=" + weight + ", package_size=" + package_size + ", num_page=" + num_page + ", description=" + description + ", image=" + image + '}';
    }
    
    
}
