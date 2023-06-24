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
public class AdminDAO extends MyDAO {
      public ArrayList<book_detail> getBookDetails() {
    ArrayList<book_detail> bookList = new ArrayList<>();
    String sql = "SELECT * FROM bookdetailed";
    try {
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("book_id");
            String name = rs.getString("product_name");
            String supplier = rs.getString("supplier");
            String publisher = rs.getString("publisher");
            String cover_form = rs.getString("cover_form");
            String price = rs.getString("price");
            int quantity = rs.getInt("quantity");
            String author = rs.getString("author");
            String year_publish = rs.getString("year_publish");
            String language = rs.getString("language");
            String weight = rs.getString("weight");
            String package_size = rs.getString("packaging_size");
            String num_page = rs.getString("num_pages");
            String description = rs.getString("description");
            String image = rs.getString("image");
            int categoryID=rs.getInt("categoryID");
            int gerne_id=rs.getInt("gerne_id");
            int status_product = rs.getInt("product_status");

            book_detail book = new book_detail(id, name, supplier, publisher, cover_form, price, quantity, author, year_publish, language, weight, package_size, num_page, description, image, categoryID, gerne_id,status_product);
            bookList.add(book);
        }
        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return bookList;
}
       public boolean addCategory(Category category) {
    String sql = "INSERT INTO category VALUES (?, ?, ?)";
    try {
        ps = con.prepareStatement(sql);
        ps.setInt(1, category.getIdCate());
        ps.setString(2, category.getCatName());
        ps.setInt(3, category.getIdMerch());
        
        int rowsAffected = ps.executeUpdate();
        return rowsAffected > 0;
    } catch (SQLException e) {
    }
    return false;
}

}
