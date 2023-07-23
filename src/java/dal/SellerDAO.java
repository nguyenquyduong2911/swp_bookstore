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

        xSql = "select o.id, a.name, COUNT(*) AS book_count,  concat(s.city, ', ', s.wards, ', ', s.district, ', ', s.deliver_address)as order_address , s.note, o.date, SUM(c.price * c.quantity) AS total_price FROM swp_bookstore.`order` o JOIN swp_bookstore.orderline c ON c.oid = o.id join swp_bookstore.order_customer_info s on o.id=s.oid join swp_bookstore.account a on a.idAccount=o.cid WHERE o.status=0 GROUP BY o.id;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderPending c = new OrderPending(rs.getInt("id"),
                        rs.getString("name"),rs.getInt("book_count") , rs.getString("order_address"),rs.getString("note"), rs.getDate("date"), rs.getDouble("total_price"));
                o.add(c);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (o);
    }
       public ArrayList<OrderPending> getSuccessOrder(){
        ArrayList<OrderPending> o = new ArrayList<>();

        xSql = "select o.id, a.name, COUNT(*) AS book_count,  concat(s.city, ', ', s.wards, ', ', s.district, ', ', s.deliver_address)as order_address , s.note, o.date, SUM(c.price * c.quantity) AS total_price FROM swp_bookstore.`order` o JOIN swp_bookstore.orderline c ON c.oid = o.id join swp_bookstore.order_customer_info s on o.id=s.oid join swp_bookstore.account a on a.idAccount=o.cid WHERE o.status=3 GROUP BY o.id;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderPending c = new OrderPending(rs.getInt("id"),
                        rs.getString("name"),rs.getInt("book_count") , rs.getString("order_address"),rs.getString("note"), rs.getDate("date"), rs.getDouble("total_price"));
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

        xSql = "select o.id, a.name, COUNT(*) AS book_count,  concat(s.city, ', ', s.wards, ', ', s.district, ', ', s.deliver_address)as order_address , s.note, o.date, SUM(c.price * c.quantity) AS total_price FROM swp_bookstore.`order` o JOIN swp_bookstore.orderline c ON c.oid = o.id join swp_bookstore.order_customer_info s on o.id=s.oid join swp_bookstore.account a on a.idAccount=o.cid WHERE o.status=1 GROUP BY o.id;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderPending c = new OrderPending(rs.getInt("id"),
                        rs.getString("name"),rs.getInt("book_count") , rs.getString("order_address"),rs.getString("note"), rs.getDate("date"), rs.getDouble("total_price"));
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
       public ArrayList<OrderDetail> getOrderDetail(int oid){
        ArrayList<OrderDetail> o = new ArrayList<>();
        xSql = "SELECT\n" +
"    d.image,\n" +
"    d.product_name,\n" +
"    c.price,\n" +
"    c.quantity,\n" +
"    c.price * c.quantity AS totalmoney\n" +
"FROM\n" +
"    swp_bookstore.order o\n" +
"JOIN\n" +
"    swp_bookstore.orderline c ON o.id = c.oid\n" +
"JOIN\n" +
"    swp_bookstore.bookdetailed d ON d.book_id = c.pid\n" +
"WHERE\n" +
"    o.id = ?;";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, oid);
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
}

      



