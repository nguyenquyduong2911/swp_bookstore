/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Account;
import entity.Cart;
import entity.Item;
import entity.OrderCustomerInfo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author taote
 */
public class OrderDAO extends MyDAO {

    public static void main(String[] args) {
        int idP =1 ;
        int idA = 1;
        int quantity = 10;
        int price = 30;
        OrderDAO o = new OrderDAO();
        try {
            o.insertCart(idP, idA, quantity, price);
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertCart(int idProduct, int idAccount, int quantity, double price) throws SQLException {
    String sql1 = "INSERT INTO swp_bookstore.item (idProduct, quantity, price) VALUES (?, ?, ?)";

    try (PreparedStatement st1 = connection.prepareStatement(sql1)) {
        st1.setInt(1, idProduct);
        st1.setInt(2, quantity);
        st1.setDouble(3, price);

        st1.executeUpdate();

        String sql2 = "SELECT idItem FROM item ORDER BY idItem DESC LIMIT 1";
        try (PreparedStatement st2 = connection.prepareStatement(sql2)) {
            try (ResultSet rs = st2.executeQuery()) {
                if (rs.next()) {
                    int idItem = rs.getInt("idItem");

                    String sql3 = "INSERT INTO cart (idItem, idAccount) VALUES (?, ?)";
                    try (PreparedStatement st3 = connection.prepareStatement(sql3)) {
                        st3.setInt(1, idItem);
                        st3.setInt(2, idAccount);

                        st3.executeUpdate();
                    }
                }
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
}


    public void addOrder(Account ac, Cart cart, OrderCustomerInfo oci) throws SQLException {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();

        try {
            // Add to the "order" table
            String sql = "INSERT INTO `Order` (`date`, `cid`, `totalmoney`, `status`) VALUES (?, ?, ?, ?)";
            try ( PreparedStatement st = con.prepareStatement(sql)) {
                st.setString(1, date);
                st.setInt(2, ac.getIdAccount());
                st.setDouble(3, cart.getTotalMoney());
                st.setInt(4, 0);
                st.executeUpdate();
            }

            // Retrieve the ID of the last inserted order
            String sql1 = "SELECT id FROM `order` ORDER BY id DESC LIMIT 1";
            try ( PreparedStatement st1 = con.prepareStatement(sql1)) {
                try ( ResultSet rs = st1.executeQuery()) {
                    if (rs.next()) {
                        int oid = rs.getInt(1);

                        // Insert order line items
                        String sql2 = "INSERT INTO orderline VALUES (?, ?, ?, ?)";
                        try ( PreparedStatement st2 = con.prepareStatement(sql2)) {
                            for (Item i : cart.getItem()) {
                                st2.setInt(1, oid);
                                st2.setInt(2, i.getProduct().getId());
                                st2.setInt(3, i.getQuantity());
                                st2.setDouble(4, i.getPrice());
                                st2.executeUpdate();
                            }
                        }

                        // Update quantity of books
                        String sql3 = "UPDATE bookdetailed SET quantity = quantity - ? WHERE book_id = ?";
                        try ( PreparedStatement st3 = con.prepareStatement(sql3)) {
                            for (Item i : cart.getItem()) {
                                st3.setInt(1, i.getQuantity());
                                st3.setInt(2, i.getProduct().getId());
                                st3.executeUpdate();
                            }
                        }

                        // Update product status
                        String sql4 = "UPDATE bookdetailed SET product_status = 1 WHERE book_id = ? AND quantity <= 0";
                        try ( PreparedStatement st4 = con.prepareStatement(sql4)) {
                            for (Item i : cart.getItem()) {
                                st4.setInt(1, i.getProduct().getId());
                                st4.executeUpdate();
                            }
                        }

                        // Insert into order_customer_info table
                        String sql5 = "INSERT INTO order_customer_info (oid, fullname, email, phonenumber, city, district, wards, deliver_address, note) "
                                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

                        try ( PreparedStatement st5 = connection.prepareStatement(sql5)) {
                            st5.setInt(1, oid);
                            st5.setString(2, oci.getFullname());
                            st5.setString(3, oci.getEmail());
                            st5.setString(4, oci.getPhonenumber());
                            st5.setString(5, oci.getCity());
                            st5.setString(6, oci.getDistrict());
                            st5.setString(7, oci.getWard());
                            st5.setString(8, oci.getDeliver_address());
                            st5.setString(9, oci.getNote());

                            st5.executeUpdate();
                        }
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void cancelOrder(int orderId) {
    try {
        // Retrieve the order details to get the list of items in the order
        String getOrderItemsSql = "SELECT * FROM orderline WHERE oid = ?";
        try (PreparedStatement getOrderItemsStatement = con.prepareStatement(getOrderItemsSql)) {
            getOrderItemsStatement.setInt(1, orderId);
            try (ResultSet orderItemsResultSet = getOrderItemsStatement.executeQuery()) {
                // Loop through the order items and update the quantity in the bookdetail table
                while (orderItemsResultSet.next()) {
                    int bookId = orderItemsResultSet.getInt("pid");
                    int quantity = orderItemsResultSet.getInt("quantity");

                    // Update the quantity in the bookdetail table
                    String updateQuantitySql = "UPDATE bookdetailed SET quantity = quantity + ? WHERE book_id = ?";
                    try (PreparedStatement updateQuantityStatement = con.prepareStatement(updateQuantitySql)) {
                        updateQuantityStatement.setInt(1, quantity);
                        updateQuantityStatement.setInt(2, bookId);
                        updateQuantityStatement.executeUpdate();
                    }
                }
            }
        }
        String updateOrderStatusSql = "UPDATE `order` SET status = 2 WHERE id = ?";
        try (PreparedStatement updateOrderStatusStatement = con.prepareStatement(updateOrderStatusSql)) {
            updateOrderStatusStatement.setInt(1, orderId);
            updateOrderStatusStatement.executeUpdate();
        }
    } catch (SQLException e) {
        System.out.println(e);
    }
}


}
