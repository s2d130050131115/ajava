package com.krut;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.hibernate.cfg.Configuration;  
  
 
public class DemoClass {
	
	public static void main(String[] args) {  
	      
	    //creating configuration object  
		
	    Configuration cfg = new Configuration();  
	    cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
	      
	      
	    SessionFactory factory = cfg.buildSessionFactory();  
	      
	    //creating session object  
	    Session session=factory.openSession();  
	      
	    //creating transaction object  
	    Transaction transaction = session.beginTransaction();  
	    int uId = Integer.parseInt(args[0]);
	    Query query=session.createQuery("from UserDetails where userid = :tempId");
	    query.setParameter("tempId", uId);
	    List<UserDetails> users = query.list(); //the cast did not even complain
	    System.out.println("User with the userId: "+uId);
	    for(UserDetails user : users){
	    	System.out.println("Name: "+user.getUserName());	
	    	System.out.println("Address: "+user.getAddress());	
	    	System.out.println("Description: "+user.getDescription());	
	    	System.out.println("JoinDate: "+user.getJoinDate());	
	    	
	    }
	      
	    transaction.commit();//transaction is committed  
	    session.close();  
	}  
	
}

