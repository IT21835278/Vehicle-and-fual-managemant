<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        center {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            max-width: 800px;
            margin-bottom: 20px;
            color:red;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
             background-color: #ffffcc;
        }

       
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 10px;
            font-weight: bold;
        }

        .button:hover {
            background-color: #FFFF00;
        }
    </style>
    
    
<title>Services List</title>
</head>




<body>
<center>
<h1 style="color:red">Services List</h1>
<table border="1px">
		<tr>
			<th>Service ID</th>
			<th>Service Name</th>
			<th>Service Charge</th>
			<th>Service Description</th>
		</tr>
   
	<%try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/servicedb", "root", "Pasan899632!");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from services");
		while(rs.next()){
		
	%>
	
	<tr>
		<td><%=rs.getInt(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
	</tr>
	<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	</table>
	
		<div style="display: flex">
		<div><a href ="AddNewService.jsp" class="button">Add New Services</a></div>
		<div><a href = "ChooseUpdate.jsp" class="button">Update Services</a></div>
		</div>
		<br><br><br><br><br>
		<a href = "Home.jsp" class="button">Back to Home</a>
	</center>

</body>
</html>