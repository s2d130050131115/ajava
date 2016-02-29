import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/DataFetching")
public class DataFetching extends HttpServlet{
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
  ResultSet rs;
  
  try{
  Class.forName("org.postgresql.Driver");
  conn = DriverManager.getConnection(DB_URL, USER, PASS);
  Statement statement = conn.createStatement();
  rs = statement.executeQuery("select * from student");
  while(rs.next()){
  out.println("" + rs.getString(1) + "\t\t " + rs.getInt(2) + "\t\t "+rs.getString(3)+"</br>");
  }
  out.println("</br>Enroll no:130050131115")
  rs.close();
  statement.close();
  conn.close();
  }
  catch (Exception e){
  System.out.println(e);
  }
  }
}