/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.*;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author taote
 */
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
public void editAccountById(int idAccount, acc_detail updatedAccount,Account a) {
    String query = "UPDATE swp_bookstore.accountdetail ad "
            + "JOIN swp_bookstore.account ac ON ad.cid = ac.idAccount "
            + "SET ad.firstname = ?, ad.lastname = ?, ad.phonenumber = ?, ac.email = ?, "
            + "ad.gender = ?, ad.dob = ?,ac.name = ?"
            + "WHERE ac.idAccount = ?";

    try (PreparedStatement ps = connection.prepareStatement(query)) {
        ps.setString(1, updatedAccount.getFirst_name());
        ps.setString(2, updatedAccount.getLast_name());
        ps.setString(3, updatedAccount.getPhone());
        ps.setString(4, updatedAccount.getEmail());
        ps.setInt(5, updatedAccount.getGender());
        ps.setString(6, updatedAccount.getDob());
        ps.setString(7,a.getName());
        ps.setInt(8, idAccount);

        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
public void updateAccountPassword(int accountId, String newPassword) throws SQLException {
        String query = "UPDATE swp_bookstore.account SET password = ? WHERE idAccount = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, newPassword);
            statement.setInt(2, accountId);

            statement.executeUpdate();
        }
    }

   
    
   public void insertReview(CustomerReview review) throws SQLException {
        String query = "INSERT INTO `review` (`ic`, `comment`, `date`, `opinion`, `pid`) VALUES (?, ?, ?, ?, ?)";
        
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, review.getCid());
            statement.setString(2, review.getComment());
            statement.setString(3, review.getDate());
            statement.setInt(4, review.getOpinion());
            statement.setInt(5, review.getPid());
            
            statement.executeUpdate();
        }
    }
//    public List<ReviewList> getReviewsForProduct(int productId) {
//    List<ReviewList> reviews = new ArrayList<>();
//    String query = "SELECT r.idreview, r.ic, a.name, r.comment, r.date, r.opinion " +
//            "FROM swp_bookstore.review r JOIN swp_bookstore.account a ON r.ic = a.idAccount " +
//            "WHERE r.pid = ?";
//    
//    try {
//        PreparedStatement statement = connection.prepareStatement(query);
//        statement.setInt(1, productId);
//        ResultSet resultSet = statement.executeQuery();
//
//        while (resultSet.next()) {
//            int reviewId = resultSet.getInt("idreview");
//            int accountId = resultSet.getInt("ic");
//            String accountName = resultSet.getString("name");
//            String comment = resultSet.getString("comment");
//            String date = resultSet.getString("date");
//            String opinion = resultSet.getString("opinion");
//
//            ReviewList review = new ReviewList(reviewId, accountId, accountName, comment, date, opinion);
//            reviews.add(review);
//        }
//    } catch (SQLException e) {
//        e.printStackTrace();
//    }
//    
//    return reviews;
//}
    public int getProductReviewCount(int productId) {
        int reviewCount = 0;
        String sql = "SELECT count(*) FROM swp_bookstore.review r WHERE r.pid = ?";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, productId);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    reviewCount = resultSet.getInt(1);
                }
            }
        } catch (SQLException e) {
            // Handle any potential exceptions
            e.printStackTrace();
        }

        return reviewCount;
    }
    
       public int GetNumberPageReview(int productid) {
        String sql = "SELECT count(*) FROM swp_bookstore.review r where r.pid =?";
        int countPage = 0;

        try ( PreparedStatement statement = con.prepareStatement(sql)) {
            statement.setInt(1, productid);
            try ( ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    int total = rs.getInt(1);
                    countPage = total / 5;
                    if (total % 5 != 0) {
                        countPage++;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return countPage;
    }

   public List<ReviewList> getReviewByProductId(int productId, int page) {
    List<ReviewList> reviews = new ArrayList<>();
    String sql = "SELECT r.idreview, r.ic, a.name, r.comment, r.date, r.opinion " +
            "FROM swp_bookstore.review r JOIN swp_bookstore.account a ON r.ic = a.idAccount " +
            "WHERE r.pid = ? ORDER BY r.idreview LIMIT 5 OFFSET ?";

    try (PreparedStatement statement = con.prepareStatement(sql)) {
        statement.setInt(1, productId);
        statement.setInt(2, (page - 1) * 5);
        ResultSet rs = statement.executeQuery();

        while (rs.next()) {
            int reviewId = rs.getInt("idreview");
            int accountId = rs.getInt("ic");
            String accountName = rs.getString("name");
            String comment = rs.getString("comment");
            String date = rs.getString("date");
            String opinion = rs.getString("opinion");

            ReviewList review = new ReviewList(reviewId, accountId, accountName, comment, date, opinion);
            reviews.add(review);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return reviews;
}


    public static void main(String[] args) {
        List<ReviewList> reviews  = new ArrayList<>();
        
      CustomerDAO o = new CustomerDAO();
//      reviews = o.getReviewsForProduct(1);
      int count = o.getProductReviewCount(1);
     
        System.out.println(count);
        
    }

    
}
