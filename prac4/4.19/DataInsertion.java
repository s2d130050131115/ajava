
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/DataInsertion")
public class DataInsertion extends HttpServlet{
	final String JDBC_DRIVER = "org.postgresql.Driver";
	
	private static final long serialVersionUID = 1L;

public void doGet(HttpServletRequest request, 
  HttpServletResponse response)throws ServletException, IOException{  
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
   final String DB_URL = "jdbc:postgresql://localhost:5432/s2d130050131115";


   final String USER = "postgres";
   final String PASS = "12345";

  Connection conn;
  //ResultSet rs;
  try{
  Class.forName("org.postgresql.Driver");
  conn = DriverManager.getConnection(DB_URL, USER, PASS);
  Statement statement = conn.createStatement();
  String query = "insert into student values('AAYUSHI',9,'cse')";
  int i = statement.executeUpdate(query);
  if(i!=0){
  out.println("The record has been inserted");
  }
  else{
  out.println("Sorry! Failure");
  }
  out.println("Enroll no: 130050131115");
  
  statement.close();
  conn.close();
  }
  catch (Exception e){
  System.out.println(e);
  }
  }
}