package csvToDB ;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class readCsvFile {
    public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException {

        // giving the driver details
        Class.forName("com.mysql.cj.jdbc.Driver");

        // building connection
        Connection connection  = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","Siddharth98");



        ArrayList<Student> studentList = new ArrayList<Student>();

        FileReader input = new FileReader("D:\\MySql\\JDBC Assignment\\JDBC\\src\\StudentFile.csv");
        BufferedReader read = new BufferedReader(input);

        String line = read.readLine();
        line = read.readLine();

        while(line != null){
            //line = line.concat("\n") ;
            Student s = createStudent(line);
            studentList.add(s);
            line = read.readLine();

        }
        PreparedStatement p = connection.prepareStatement("insert into studentFile values (?,?,?,?);");
        for (Student s : studentList){
            System.out.println(s.getYear()+" "+s.getCourse()+" "+ s.getId()+" "+s.getName());




            p.setString(1,s.getId());
            p.setString(2,s.getName());
            p.setString(3,s.getCourse());

            p.setInt(4,s.getYear());
            p.executeUpdate();


        }





        input.close();
        read.close();
        connection.close();


    }

    public static Student createStudent(String line){
        Student s = new Student();
        String[] data = line.split(",");

        s.setId(data[0]);
        s.setName(data[1]);
        s.setCourse(data[2]);
        s.setYear(Integer.parseInt(data[3]));

        return s ;
    }

}
