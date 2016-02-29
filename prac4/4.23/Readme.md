4.23 Natural Left Join
----------------------
In this program we are going to join the two table by using the servlets and the result will be displayed in the browser. This join will be natural left join. 
To join the tables firstly it is important to make a connection between the java class and the database. In our program we are using the MySql database. To join the table in a natural left join manner it is important to have those tables in our database. First of all make a class named ServletNaturalJoiningTables. The name of the class should be such that it becomes clear that what the program is going to do. The logic of the program will be written inside the doGet() method which takes two arguments HttpServletRequest and HttpServletResponse. call the method getWriter() of the PrintWriter class, which is responsible for writing the contents on the browser. Our priority is to join the two tables so pass a query in prepareStatement() method which will return the PreparedStatement object.
![capture](https://cloud.githubusercontent.com/assets/16977137/13393050/07b084d4-df05-11e5-9b13-280236f9f943.PNG)
![capture2](https://cloud.githubusercontent.com/assets/16977137/13393052/0af320c0-df05-11e5-8628-3e2e9f2e2094.PNG)
![screenshot 222](https://cloud.githubusercontent.com/assets/16977137/13393054/0eb81288-df05-11e5-87a4-24bbc5e62116.png)
