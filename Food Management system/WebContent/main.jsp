<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>




<html>
<title>
project
</title>
<style>
    table, td {
  border: 1px solid black;
  width: 500px;
}
td{
    padding: 20px;
}
input[type="submit"]{
    /* change these properties to whatever you want */
    background-color: #555;
    color: #fff;
    border-radius: 100px;
    width: 250px;
    height: 50px;
}
input[type="text"] {
    width: 450px;
    height: 100px;
}
body {
  background-image: url("food.jpg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
 
}

</style>
<body>
    <h1 align = "center">Online Food Ordering System In University</h1>
    <table align="center">
        <form action="Retrive.jsp" method="GET">
            <tr>
                <td>
                    <b>Select SQL operation to perform on table:</b><br><br>
<input type="radio" name="selection" value="select" required>
<label for="select">Select</label><br>
<input type="radio" id="insert" name="selection" value="insert" required>
<label for="Insert">Insert</label><br>
<input type="radio" id="update" name="selection" value="update" required>
<label for="update">Update</label><br>
<input type="radio" id="delete" name="selection" value="delete" required>
<label for="delete">Delete</label>
<br>
                </td>
            </tr>
            <tr>
<td>
<b>Table Names:</b><br>
1) User <br>
2) Food <br>
3) Order_Details <br>
4) Fooditems <br>
5) Vendor <br>
6) Adminstrator <br>
</td>
            </tr>
            <tr>

            <td ><br>
                    <b>Enter your query:</b> <br><br>
                    <!-- <input type="text" name="query" width="100" height="20">-->
                    <textarea name="query" rows="10" cols="30"></textarea>
                    <br>
                    <br>
                    <br>
                </td>
            </tr>

            <tr>
                <td align="center">
                    <br>

                    <input type="submit" value="submit" >
                </td>
            </tr>
        </form>
    </table>
   
    


 <br>
 <h1 align="center">Tables Information</h1>
    <table align = "center">
        <tr>
            <td>
        Entity 1: User
            </td><td>
User_id  (Varchar(30))<br>
Type  (Varchar (30))<br>
Passkey  (varchar (50))<br>
First_name  (varchar (45))<br>
Last_name  (varchar (30))<br>
Mobile_no  (varchar (40))<br>
Email  (varchar (40))<br>
</td>
        </tr>
        <tr>
            <td>

        
Entity 2: Food
            </td><td>
              Food_id (Varchar(30))<br>
              Food_Category (varchar(50))<br>
              Food_name (varchar(30))<br>
              Price (int(40))<br>
              Ingredients (varchar(80))<br>
              Image LONGBLOB<br>
              Vendor_id[Varchar(50))<br>
            </td>
        </tr>
              <tr>
                <td>
    
            
Entity 3: Order_Details
</td><td>
                 Order_id (VARCHAR(50))<br>
                  User_id (VARCHAR(30))<br>
                  Vendor_id (int (50))<br>
                  Payment_type (varchar (30))<br>
                  Preparation_time (TIME)<br>
                  Tracking (varchar (30))<br>
                  Food_id (varchar(20))<br>
                   Quantity (int(10))<br>
                </td>
            </tr>
            
    <tr>
                <td>
    
            
Entity 4: Fooditems
</td><td>
                 Order_id (VARCHAR(50))<br>
                  Food_id (varchar(20))<br>
                   Quantity (int(10))<br>
                </td>
            </tr>            
            
                   <tr>
                    <td>
        
                
Entity 5: Vendor
</td><td>
              Vendor_id (Varchar(50))<br>
               Username (varchar(50))<br>
               Passkey (varchar(30))<br>
               Vendor_name (varchar(30))<br>
               Vendor_address (varchar(50))<br>
                Mobile_no (Varchar(40))<br>
               Email (varchar(40))<br>
                Timing (Varchar(30))<br>
            </td>
        </tr>
                <tr>
                    <td>
        
                
Entity 6: Administrator
</td><td>
                 Admin_id (Varchar(30))<br>
                 Passkey (varchar(30))<br>
		    Email (varchar(30))<br>
                 First_name (varchar(40)<br>
                 Last_name (varchar(30))<br>
                </td>
            </tr>

    </table>
</body>
</html>
