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
      background-color: #80aaff;
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
      background-color: #4d94ff;
    }
  </style>
<title>Update page</title>
</head>
<body>
<%
	String id=request.getParameter("sid");
	String name=request.getParameter("sName");
	String CHrg=request.getParameter("scharge");
	String Descrp=request.getParameter("sDes");
	
%>
<center><h2 style="color:red">Existing Details Of Service</h2></center>
<form action="update" method="post">
	Service ID :<input type="text" name="SId" value="<%=id %>" readonly><br>
	Service name :<input type="text" name="SName" value="<%=name %>"><br>
	Service charge :<input type="text" name="SChrg" value="<%=CHrg %>"><br>
	Description :<input type="text" name="SDis" value="<%=Descrp %>"><br>
	
	<input type="submit" name="submit" value="Update Service Details"><br>
</form>
</body>
</html>