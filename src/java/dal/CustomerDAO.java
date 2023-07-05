/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Account;
import java.sql.SQLException;
<<<<<<< Updated upstream
=======
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;
>>>>>>> Stashed changes

/**
 *
 * @author taote
 */
<<<<<<< Updated upstream
public class CustomerDAO extends MyDAO{
public Account getAccount(String email, String pass) {
=======
public class CustomerDAO extends MyDAO {
    
    public ArrayList<OrderHistory> getOrderHistory(int id){
        ArrayList<OrderHistory> o = new ArrayList<>();
        xSql = "select o.cid, d.image, d.product_name, c.price, c.quantity, o.totalmoney, o.status  from swp_bookstore.order"
                + " o join swp_bookstore.orderline c join swp_bookstore.bookdetailed d where"
                + " c.oid=o.id and d.book_id=c.pid and o.cid=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderHistory c = new OrderHistory(rs.getInt("cid"),rs.getString("image"),
                        rs.getString("product_name"),rs.getFloat("price"),rs.getInt("quantity"),rs.getDouble("totalmoney"), rs.getInt("status"));
                o.add(c);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (o);
    }
    public ArrayList<OrderSummary> getOrderSummary(int id){
        ArrayList<OrderSummary> o = new ArrayList<>();
        xSql = " SELECT o.id, COUNT(*) AS book_count, o.date, o.status, SUM(c.price * c.quantity) AS total_price\n" +
"FROM swp_bookstore.`order` o \n" +
"JOIN swp_bookstore.orderline c ON c.oid = o.id\n" +
"WHERE o.cid = ?\n" +
"GROUP BY o.id;";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderSummary c = new OrderSummary(rs.getInt("id"),
                        rs.getInt("book_count"),rs.getDate("date") , rs.getInt("status"), rs.getFloat("total_price"));
                o.add(c);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (o);
    }
    public ArrayList<OrderDetail> getOrderDetail(int id, int oid){
        ArrayList<OrderDetail> o = new ArrayList<>();
        xSql = "select d.image, d.product_name, c.price, c.quantity, o.totalmoney from swp_bookstore.order\n" +
"                 o join swp_bookstore.orderline c join swp_bookstore.bookdetailed d where\n" +
"                 c.oid=o.id and d.book_id=c.pid and o.cid=? and o.id=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            ps.setInt(2, oid);
            rs = ps.executeQuery();
            while (rs.next()) {
               OrderDetail c = new OrderDetail(rs.getString("image"), rs.getString("product_name"), rs.getFloat("price"),
                       rs.getInt("quantity"), rs.getDouble("totalmoney"));
                o.add(c);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (o);
    }
    public Account getAccount(String email, String pass) {
>>>>>>> Stashed changes
        Account x = null;

        xSql = "select * from account where email=? and password=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                x = new Account(rs.getInt("idAccount"), pass, rs.getString("name"), email,rs.getString("role"));

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

            return rowsAffected > 0; // Account added successfully
            // No rows were affected, account addition failed
        } catch (SQLException e) {
            e.printStackTrace();
            // Exception occurred, account addition failed
            return false;
        }
    }
}
