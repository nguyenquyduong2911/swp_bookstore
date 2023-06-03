/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class Account {
    private Integer idAccount;
    private String password;
    private String name;
    private String email;

    public Account() {
    }

    public Account(Integer idAccount, String password, String name, String email) {
        this.idAccount = idAccount;
        this.password = password;
        this.name = name;
        this.email = email;
    }
      public Account(String password, String name, String email) {
        this.idAccount = null;
        this.password = password;
        this.name = name;
        this.email = email;
    }

    public Integer getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(Integer idAccount) {
        this.idAccount = idAccount;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
      
    

    

    @Override
    public String toString() {
        return "email: "+email+"name: "+name+"password: "+password; // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
 
    
}