import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
@WebServlet("/ServletInsertingDataUsingHtml")

public class ServletInsertingDataUsingHtml extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	static final String JDBC_DRIVER = "org.postgresql.Driver";
	static final String DB_URL = "jdbc:postgresql://localhost:5432/s2d130050131115";

	static final String USER = "postgres";
	static final String PASS = "12345";
	   
		
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String pass = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
			String sql = "INSERT INTO logindetails(name, password) VALUES (?,?)";
            pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
            pstmt.setString(2, pass);
            pstmt.addBatch();
    
			out.println("Enroll no:13005013115");
            if(pstmt.executeBatch().length != 0){
            	out.println("</br>Record has been inserted");
            }else {
            	out.println("sorry! Failure");
            }
		 
	            
		}catch(SQLException se){
		      se.printStackTrace();
		   }catch(Exception e){
		       e.printStackTrace();
		   }finally{
		      try{
		         if(pstmt!=null)
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
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void destroy(){
		
	}
  
}