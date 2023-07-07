
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
    public Connection connection;

    public DBContext() {
        try {
            // Change the username, password, and database name to connect to your own database
            String username = "root";
            String password = "12345";
            String dbName = "swp_bookstore";
            String url = "jdbc:mysql://localhost:3306/" + dbName + "?useUnicode=true&characterEncoding=utf8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

            Class.forName("com.mysql.cj.jdbc.Driver");
            
            connection = DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        Connection con = null;
        try {
            // Change the username, password, and database name to connect to your own database
            String username = "root";
            String password = "12345";
            String dbName = "swp_bookstore";
            String url = "jdbc:mysql://localhost:3306/" + dbName + "?useUnicode=true&characterEncoding=utf8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

            Class.forName("com.mysql.cj.jdbc.Driver");
            
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Susccess");

        } catch (Exception e) {
            System.out.println("Failed");
        }
    }
}

//package dal;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//public class DBContext {
//    public Connection connection;
//
//    public DBContext() {
//        try {
//            // Change the username, password, and database name to connect to your own database
//            
//            String url="jdbc:mysql://swpbookstore1.mysql.database.azure.com:3306/swp_bookstore?useSSL=true";
//
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            
//            connection = DriverManager.getConnection(url, "azurehecate", "Supernova12345");
//
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//}
