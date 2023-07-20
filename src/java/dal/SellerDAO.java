/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class SellerDAO extends MyDAO {
       public ArrayList<OrderPending> getPendingOrder(){
        ArrayList<OrderPending> o = new ArrayList<>();
        xSql = 
"SELECT o.id, o.cid, COUNT(*) AS book_count, o.date, SUM(c.price * c.quantity) AS total_price\n" +
"FROM swp_bookstore.`order` o\n" +
"JOIN swp_bookstore.orderline c ON c.oid = o.id\n" +
"WHERE o.status=0\n" +
"GROUP BY o.id;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderPending c = new OrderPending(rs.getInt("id"),
                        rs.getInt("cid"),rs.getInt("book_count") , rs.getDate("date"), rs.getFloat("total_price"));
                o.add(c);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (o);
    }
        public Account getAccount(int idAccount) {
    Account x;

    xSql = "SELECT * FROM account WHERE idAccount=?";
    try {
        ps = con.prepareStatement(xSql);
        ps.setInt(1,idAccount);
        rs = ps.executeQuery();

        if (rs.next()) {
            x = new Account(idAccount, rs.getString("password"), rs.getString("name"), rs.getString("email"), rs.getString("role"));
             return x;
        }
        
        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
   return null;
}
       public ArrayList<OrderPending> getApproveOrder(){
        ArrayList<OrderPending> o = new ArrayList<>();
        xSql = 
"SELECT o.id, o.cid, COUNT(*) AS book_count, o.date, SUM(c.price * c.quantity) AS total_price\n" +
"FROM swp_bookstore.`order` o\n" +
"JOIN swp_bookstore.orderline c ON c.oid = o.id\n" +
"WHERE o.status=1\n" +
"GROUP BY o.id;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderPending c = new OrderPending(rs.getInt("id"),
                        rs.getInt("cid"),rs.getInt("book_count") , rs.getDate("date"), rs.getFloat("total_price"));
                o.add(c);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (o);
    }
       public ArrayList<OrderPending> getShippingOrder(){
        ArrayList<OrderPending> o = new ArrayList<>();
        xSql = 
"SELECT o.id, o.cid, COUNT(*) AS book_count, o.date, SUM(c.price * c.quantity) AS total_price\n" +
"FROM swp_bookstore.`order` o\n" +
"JOIN swp_bookstore.orderline c ON c.oid = o.id\n" +
"WHERE o.status=2\n" +
"GROUP BY o.id;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderPending c = new OrderPending(rs.getInt("id"),
                        rs.getInt("cid"),rs.getInt("book_count") , rs.getDate("date"), rs.getFloat("total_price"));
                o.add(c);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (o);
    }
       public void updateOrderStatus(int orderId, int status) {
        String xSql = "UPDATE swp_bookstore.order SET status = ? WHERE id = ?";
       try {      
        ps = con.prepareStatement(xSql);
        ps.setInt(1,status);
        ps.setInt(2, orderId);
        ps.executeUpdate();
        ps.close();
     }
      catch(Exception e) {
        e.printStackTrace();
      }
    }
}

      



