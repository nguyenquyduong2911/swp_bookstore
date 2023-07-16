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
   public boolean updateBookDetail(book_detail book) {
    xSql = "UPDATE bookdetailed SET product_name=?, supplier=?, publisher=?, cover_form=?, price=?, quantity=?, author=?, year_publish=?, language=?, weight=?, packaging_size=?, num_pages=?, description=?, image=? WHERE book_id=?";
    
    try {
        ps = con.prepareStatement(xSql);
        ps.setString(1, book.getName());
        ps.setString(2, book.getSupplier());
        ps.setString(3, book.getPublisher());
        ps.setString(4, book.getCover_form());
        ps.setString(5, book.getPrice());
        ps.setInt(6, book.getQuantity());
        ps.setString(7, book.getAuthor());
        ps.setString(8, book.getYear_publish());
        ps.setString(9, book.getLanguage());
        ps.setString(10, book.getWeight());
        ps.setString(11, book.getPackage_size());
        ps.setInt(12, book.getNum_page());
        ps.setString(13, book.getDescription());
        ps.setString(14, book.getImage());
        ps.setInt(15, book.getId());
        
        int rowsUpdated = ps.executeUpdate();
        ps.close();
        
        if (rowsUpdated > 0) {
            return true;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    
    return false;
}


    public book_detail getBookDetailById(int bookId) {
        String sql = "SELECT * FROM bookdetailed WHERE book_id = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, bookId);
            rs = ps.executeQuery();
            if (rs.next()) {
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
                int num_page = rs.getInt("num_pages");
                String description = rs.getString("description");
                String image = rs.getString("image");
                int categoryID = rs.getInt("categoryID");
                int gerne_id = rs.getInt("gerne_id");
                int bookimageID = rs.getInt("book_imageID");
                int status_product = rs.getInt("product_status");

                return new book_detail(id, name, supplier, publisher, cover_form, price, quantity, author, year_publish, language, weight, package_size, num_page, description, image, categoryID, gerne_id, bookimageID, status_product);
            }
             rs.close();
        ps.close();
        } catch (Exception e) {
        e.printStackTrace();
    }
        return null;
    }
    public boolean deleteBookDetail(int bookId) {
    xSql = "DELETE FROM bookdetailed WHERE book_id = ?";

    try {
        ps = con.prepareStatement(xSql);
        ps.setInt(1, bookId);
        int rowsDeleted = ps.executeUpdate();
        ps.close();
        return rowsDeleted > 0;
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false;
}

    
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
            int num_page = rs.getInt("num_pages");
            String description = rs.getString("description");
            String image = rs.getString("image");
            int categoryID=rs.getInt("categoryID");
            int gerne_id=rs.getInt("gerne_id");
            int bookimageID=rs.getInt("book_imageID");
            int status_product = rs.getInt("product_status");

            book_detail book = new book_detail(id, name,supplier, publisher, cover_form, price, quantity, author, year_publish, language, weight, package_size, num_page,description, image, categoryID, gerne_id, bookimageID, status_product);
            bookList.add(book);
        }
        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return bookList;
}
      public ArrayList<Account> getAccount() {
    ArrayList<Account> x = new ArrayList<>();

    xSql = "SELECT * FROM account WHERE role=?";
    try {
        ps = con.prepareStatement(xSql);
        ps.setString(1, "user");
        rs = ps.executeQuery();

        while (rs.next()) {
            Account b = new Account(rs.getInt("idAccount"), rs.getString("password"), rs.getString("name"), rs.getString("email"), rs.getString("role"));
            x.add(b);
        }
        
        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return x;
}

      public ArrayList<Category> getCategory() {
    ArrayList<Category> CategoryList = new ArrayList<>();
    String sql = "SELECT * FROM category";
    try {
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("");
           
        }
        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return CategoryList;
}
       public ArrayList<String> getCatName() {
    ArrayList<String> catList = new ArrayList<>();
    String sql = "select catname from category ";
    try {
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            String cat=rs.getString("catname");
            catList.add(cat);
        }
        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return catList;
}
       public int getcatId(String catname) {
            int catId = -1;
    String sql = "select idcategory from category where catname=? ";
    try {
        ps = con.prepareStatement(sql);
        ps.setString(1, catname); // Set the catname parameter
        rs = ps.executeQuery();
        if (rs.next()) {
            catId = rs.getInt("idCategory");
        }
        rs.close();
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return catId;
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
         public void update(String catname, Category x) {
        xSql = "update category set catname=? where idCategory=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, x.getCatName());
            ps.setInt(2, x.getIdCate());
            
            
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public boolean addBookdetail(book_detail x) {
        String sql = "INSERT INTO bookdetailed VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, x.getId());
            ps.setString(2, x.getName());
            ps.setString(3, x.getSupplier());
            ps.setString(4, x.getPublisher());
            ps.setString(5, x.getCover_form());
            ps.setString(6, x.getPrice());
            ps.setInt(7, x.getQuantity());
            ps.setString(8, x.getAuthor());
            ps.setString(9, x.getYear_publish());
            ps.setString(10, x.getLanguage());
            ps.setString(11, x.getWeight());
            ps.setString(12, x.getPackage_size());
            ps.setInt(13, x.getNum_page());
            ps.setString(14, x.getDescription());
            ps.setString(15, x.getImage());
            ps.setInt(16, x.getCategoryID());
            ps.setInt(17, x.getGerne_id());
            ps.setInt(18, x.getBook_imageID());
            ps.setInt(19, x.getStatus_product());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}

      



