package csvToDB ;

import com.mysql.cj.jdbc.Driver;

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CollegeDB {
    public static  void main (String [] args ) throws SQLException, FileNotFoundException, ClassNotFoundException {

        // giving the driver details
        Class.forName("com.mysql.cj.jdbc.Driver");

        // building connection
        Connection connection  = DriverManager.getConnection("jdbc:mysql://localhost:3306/class1","root","Siddharth98");


    }
}