/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author taote
 */
public class OrderCustomerInfo {
  
    private String fullname;
    private String email;
    private String phonenumber;
    private String city;
    private String district;
    private String ward;
    private String deliver_address;
    private String note;

    public OrderCustomerInfo() {
    }

    public OrderCustomerInfo(String fullname, String email, String phonenumber, String city, String district, String ward, String deliver_address, String note) {
        this.fullname = fullname;
        this.email = email;
        this.phonenumber = phonenumber;
        this.city = city;
        this.district = district;
        this.ward = ward;
        this.deliver_address = deliver_address;
        this.note = note;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getDeliver_address() {
        return deliver_address;
    }

    public void setDeliver_address(String deliver_address) {
        this.deliver_address = deliver_address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "OrderCustomerInfo{" + "fullname=" + fullname + ", email=" + email + ", phonenumber=" + phonenumber + ", city=" + city + ", district=" + district + ", ward=" + ward + ", deliver_address=" + deliver_address + ", note=" + note + '}';
    }

  

    
}
