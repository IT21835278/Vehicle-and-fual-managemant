<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
    }
    form {
      max-width: 400px;
      margin: 0 auto;
      background-color: #ff6666;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    input[type="text"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    input[type="submit"] {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #ff1a1a;
    }
    
    .button {
     display: inline-block;
     padding: 10px 20px;
     background-color: #4CAF50;
     color: #fff;
     text-decoration: none;
     border-radius: 5px;
     margin: 10px;
     font-weight: bold;
}
            
.button:hover {
     background-color: #FFFF00;
}
  </style>
<title>Delete Service</title>
</head>
<body>
	<%
	String id=request.getParameter("sid");
	String name=request.getParameter("sName");
	String CHrg=request.getParameter("scharge");
	String Descrp=request.getParameter("sDes");
	
	%>
	<center><h2 style="color:red">Existing Details Of Service</h2></center>
	<form action="delete" method="post">
		Service ID :<input type="text" name="SId" value="<%=id %>" readonly><br>
		Service name :<input type="text" name="SName" value="<%=name %>" readonly><br>
		Service charge :<input type="text" name="SChrg" value="<%=CHrg %>" readonly><br>
		Description :<input type="text" name="SDis" value="<%=Descrp %>" readonly><br>
	
		<input type="submit" name="submit" value="Delete Service Details">
	</form>
	
	<br><br><br><br>
	<center><a href="selectUpdate.jsp" class="button" >Cancel Delete</a></center>
</body>
</html>