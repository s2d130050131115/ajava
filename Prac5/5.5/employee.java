import java.sql.*;
import java.util.*;

class employee{
    public static void main(String[] args){
        Connection con=null;
        Statement stmt=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/s2d13005013115","root","");
           stmt=con.createStatement();
            String query="create table employee(id Integer,emp_name varchar(30));"; 
            stmt.executeUpdate(query);
            System.out.println("Table Created....!!!");
        }catch(Exception e){}
    }
}
