import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletConfig;
public class ServletFetchingDataFromDatabase extends HttpServlet {
	public void init(ServletConfig c){
	}
	public void doGet(HttpServletRequest rq,HttpServletResponse re) throws ServletException{
		re.setContentType("text/html");
		Connection c=null;
		PreparedStatement s=null;
		ResultSet rs=null;
		try{
			PrintWriter out=re.getWriter();
			Class.forName("org.postgresql.Driver");
			c=DriverManager.getConnection("jdbc:postgresql://localhost:5432/s2d130050131090","postgres","12345");
			String query="select * from student;";
			s=c.prepareStatement(query);
			
			out.println("eno=130050131115<br/>");
			rs=s.executeQuery();
			while(rs.next()){
				out.println("<br/>name:"+rs.getString("name"));
				out.println("id:"+rs.getInt("roll_no"));
				
				out.println("branch:"+rs.getString("branch"));
			}
		}
		catch(IOException i){
			System.out.println("IOException");
		}
		catch(Exception e){
			System.out.println(e);
		}
		
	}
	public void destroy(){
	}
}