4.2 Displaying Date in Servlet
------------------------------
In this example we are going to show how we can display a current date and time on our browser. It is very easy to display it on our browser by using the Date class of the java.util package.

![screenshot 154](https://cloud.githubusercontent.com/assets/16977137/13036173/4637cff8-d386-11e5-931b-4f34056834ec.png)

4.4 A Holistic counter in Servlet
---------------------------------
In this program we are going to make a such a servlet which will count the number of times it has been accessed and the number of threads created by the server.
In this example firstly we are going to create one class named as HolisticCounterInServlet. Now declare a variable counter of int with initial value 0, the value of this counter will be different for each servlet and create a Hashtable object. This object will be shared by all the threads in the container. Inside the doGet() method use the method getWriter() method of the response object which will return the PrintWriter object. 

![screenshot 156](https://cloud.githubusercontent.com/assets/16977137/13036170/27ea660a-d386-11e5-8269-044736280520.png)


4.8 Dice Roller
---------------
We are going to make one program on the dice roller in which the number in the dice will be selected randomly.
To make a program over this firstly we need to make a class DiceRoller in which we will have a doGet() method in which we will have our application logic. To make the dice working randomly use the random() method of the class java.lang.Math. To print the number on the browser call the method getWriter() of the response object which will return the PrintWriter object. Now by the object of the PrintWriter class print the values of the dice on the browser. 

![screenshot 160](https://cloud.githubusercontent.com/assets/16977137/13036162/fbd1c766-d385-11e5-9684-92295770cb67.png)


4.12 Time Updater in Servlet
----------------------------
In this program we are going to make one program on servlet which will keep on updating the time in every second and the result will be displayed to you.
To make this servlet firstly we need to make a class named TimeUpdater.  The name of the class should be such that it becomes easy to understand what the program is going to do. Call the method getWriter() method of the response object which will return a PrintWriter object. Use the method getHeader() of the response object to add a new header. We can also use setHeader() in place of getHeader(). The setHeader() method overrides the previous set header. Now by using the PrintWriter object display the result on the browser.

![screenshot 167](https://cloud.githubusercontent.com/assets/16977137/13036153/ccd9968c-d385-11e5-94ca-aa7a78228acc.png)
![screenshot 168](https://cloud.githubusercontent.com/assets/16977137/13036155/d2948e92-d385-11e5-84e1-6068f742e81b.png)


4.13 Send Redirect in Servlet
-----------------------------
When we want that someone else should handle the response of our servlet, then there we should use sendRedirect() method.
In send Redirect whenever the client makes any request it goes to the container, there the container decides whether the concerned servlet can handle the request or not. If not then the servlet decides that the request can be handle by other servlet or jsp. Then the servlet calls the sendRedirect() method of the response object and sends back the response to the browser along with the status code. Then the browser sees the status code and look for that servlet which can now handle the request. Again the browser makes a new request, but with the name of that servlet which can now handle the request and the result will be displayed to you by the browser. In all this process the client is unaware of the processing.
In this example we are going to make one html in which we will submit the user name and his password. The controller will check if the password entered by the user is correct or not. If the password entered by the user is correct then the servlet will redirect the request to the other servlet which will handle the request. If the password entered by the user is wrong then the request will be forwarded to the html form.

![screenshot 169](https://cloud.githubusercontent.com/assets/16977137/13036138/7cc1437a-d385-11e5-9199-dfa61fd2122e.png)
![screenshot 170](https://cloud.githubusercontent.com/assets/16977137/13036141/81f7ebdc-d385-11e5-87ca-768d509e5268.png)
![screenshot 171](https://cloud.githubusercontent.com/assets/16977137/13036143/88472b38-d385-11e5-8c20-0741d7a44576.png)



4.16 Session Last Accessed Time Example
---------------------------------------
This example illustrates to find current  access time of session  and last access time of session. Sessions are used to maintain state and user identity across multiple page requests. An implementation of HttpSession represents the server's view of the session. The server considers a session to be new until it has been joined by the client. Until the client joins the session, isNew() method returns true.


