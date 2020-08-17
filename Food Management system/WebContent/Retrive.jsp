<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
    table, td {
  border: 1px solid black;
}
td{
    padding: 10px;

}
body {
  background-image: url("food.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
 
}
</style>


</head>

<body>

<% 
ResultSet resultset =null;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/fooddatabase_sprint3","root","spandana14"); 
System.out.println("connected");
String query1=request.getParameter("query");
System.out.println(query1);
      
      String s1=request.getParameter("selection");
      System.out.println(s1);

  if(request.getParameter("selection").equals("select"))
      {
	  Statement statement = con.createStatement() ;
      resultset  =statement.executeQuery(query1) ;
       
      ResultSetMetaData rsmd = resultset.getMetaData();
      int columnsNumber = rsmd.getColumnCount();
     
      %>
      <br><br><br><br>
      <table align="center">
      <tr>
      <%
      for (int i = 1; i <= columnsNumber; i++) {%>
 		 
		  <td> <B><%= rsmd.getColumnName(i)%></B></td>
	<% }%>
      
      </tr>
      
      
      <% 
       while(resultset.next()){%>
    	  
    	 <tr>
    	 <% 
    	   for (int i = 1; i <= columnsNumber; i++) {%>
      		 
       <td> <%= resultset.getString(i)%></td>
        
    <% }%>
    	   
    	   
    	  </tr>
            
         
        <% }%>
      </table>
           <%
       }
       else if(request.getParameter("selection").equals("insert"))
       {
    	   PreparedStatement myStmt = null;
    	 
    	   myStmt = con.prepareStatement(query1);
    	  
    	   if((myStmt.execute()==false))
    	   {%>
    	    <p>inserted successfully</p>
    	   <% }
       } 
       else if(request.getParameter("selection").equals("update"))
       {
    	   PreparedStatement myStmt = null;
    	 
    	   myStmt = con.prepareStatement(query1);
    	  
    	   if((myStmt.execute()==false))
    	   {%>
    	    <p>updated successfully</p>
    	   <% }
       }
  else
  {

	   PreparedStatement myStmt = null;
	 
	   myStmt = con.prepareStatement(query1);
	  
	   if((myStmt.execute()==false))
	   {%>
	    <p>Deleted successfully</p>
	   <% }
  }
  %>
       
 <br> <br><br> <center><a href="main.jsp" text-align="center">Navigate to main page</a></center>  
 </body> 

</html>