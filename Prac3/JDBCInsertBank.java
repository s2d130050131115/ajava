//STEP 1. Import required packages
import java.sql.*;

public class JDBCInsertBank {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "org.postgresql.Driver";  
   static final String DB_URL = "jdbc:postgresql://localhost/s2d130050131115";

   //  Database credentials
   static final String USER = "postgres";
   static final String PASS = "12345";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      //STEP 2: Register JDBC driver
      Class.forName(JDBC_DRIVER);

      //STEP 3: Open a connection
      System.out.println("Connecting to a selected database...");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      System.out.println("Connected database successfully...");
      
      //STEP 4: Execute a query
      System.out.println("Inserting records into the table...");
      stmt = conn.createStatement();
      
      String sql = "INSERT INTO BANK " +
                   "VALUES (1001, 'TWISHA', 500000, 7896641452, 'MANJALPUR' )";
      stmt.executeUpdate(sql);
	  String sql1 = "INSERT INTO BANK " +
                   "VALUES (1002, 'AAYUSHI', 650000, 7874641741, 'NIZAMPURA' )";
      stmt.executeUpdate(sql1);
	  String sql2 = "INSERT INTO BANK " +
                   "VALUES (1003, 'NIDHI', 741000, 9632587412, 'ALKAPURI' )";
      stmt.executeUpdate(sql2);
	  String sql3 = "INSERT INTO BANK " +
                   "VALUES (1004, 'BHARGAVI', 50000, 1593574206, 'FATEGUNJ' )";
      stmt.executeUpdate(sql3);
      
      System.out.println("records Inserted into the table...");

   }catch(SQLException se){
      se.printStackTrace();
   }catch(Exception e){
      e.printStackTrace();
   }finally{
      try{
         if(stmt!=null)
            conn.close();
      }catch(SQLException se){
      }
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }
   }
   System.out.println("Goodbye!");
}
}