/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Account;
import entity.acc_detail;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author taote
 */
public class CustomerDAO extends MyDAO {

    public Account getAccount(String email, String pass) {
        Account x = null;

        xSql = "select * from account where email=? and password=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                x = new Account(rs.getInt("idAccount"), pass, rs.getString("name"), email, rs.getString("role"));

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }
public Account getEmail(String email) {
        Account x = null;

        xSql = "select * from account where email=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                x = new Account(rs.getInt("idAccount"), rs.getString("password"), rs.getString("name"), email,rs.getString("role"));

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

  public boolean addAccount(Account x) {
    String sql = "INSERT INTO account (password, name, email, role) VALUES (?, ?, ?, ?)";
    try {
        ps = con.prepareStatement(sql);
        ps.setString(1, x.getPassword());
        ps.setString(2, x.getName());
        ps.setString(3, x.getEmail());
        ps.setString(4, x.getRole());
        int rowsAffected = ps.executeUpdate();
        ps.close();

        String sql1 = "SELECT idAccount FROM account ORDER BY idAccount DESC LIMIT 1";
        int oid = 0; // Declare oid outside the if block
        try (PreparedStatement st1 = con.prepareStatement(sql1);
             ResultSet rs = st1.executeQuery()) {
            if (rs.next()) {
                oid = rs.getInt(1);
            }
        }

        String sql2 = "INSERT INTO accountdetail (cid) VALUES (?)";
        try (PreparedStatement st2 = con.prepareStatement(sql2)) {
            st2.setInt(1, oid);
            st2.executeUpdate(); // Execute the second SQL query to insert the id into accountdetail table
        }

        return rowsAffected > 0; // Account added successfully
    } catch (SQLException e) {
        e.printStackTrace();
        // Exception occurred, account addition failed
        return false;
    }
}



    public acc_detail getAccountById(int idAccount) {
        String query = "SELECT ad.firstname,ad.lastname,ad.phonenumber,"
                + "ac.email,ad.gender,DATE_FORMAT(ad.dob, '%m-%d-%Y') AS formatted_dob FROM swp_bookstore.accountdetail ad  "
                + " join swp_bookstore.account ac"
                + " on ad.cid = ac.idAccount where ac.idAccount = ?";
              

        try ( PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, idAccount);
            try ( ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    acc_detail ac = new acc_detail();
                    ac.setFirst_name(rs.getString("ad.firstname"));
                    ac.setLast_name(rs.getString("ad.lastname"));
                    ac.setPhone(rs.getString("ad.phonenumber"));
                    ac.setEmail(rs.getString("ac.email"));
                    ac.setGender(rs.getInt("ad.gender"));
                   
                    ac.setDob(rs.getString("formatted_dob"));
                    return ac;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null; // Return null if no account was found
    }
public void editAccountById(int idAccount, acc_detail updatedAccount) {
    String query = "UPDATE swp_bookstore.accountdetail ad "
            + "JOIN swp_bookstore.account ac ON ad.cid = ac.idAccount "
            + "SET ad.firstname = ?, ad.lastname = ?, ad.phonenumber = ?, ac.email = ?, "
            + "ad.gender = ?, ad.dob = ? "
            + "WHERE ac.idAccount = ?";

    try (PreparedStatement ps = connection.prepareStatement(query)) {
        ps.setString(1, updatedAccount.getFirst_name());
        ps.setString(2, updatedAccount.getLast_name());
        ps.setString(3, updatedAccount.getPhone());
        ps.setString(4, updatedAccount.getEmail());
        ps.setInt(5, updatedAccount.getGender());
        ps.setString(6, updatedAccount.getDob());
        ps.setInt(7, idAccount);

        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}


    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO();

        acc_detail ac = dao.getAccountById(1);
        System.out.println(ac);
    }
}
