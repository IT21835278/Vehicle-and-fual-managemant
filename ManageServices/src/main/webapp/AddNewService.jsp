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
            width: 400px;
            max-width: 80%;
            margin-bottom: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        input[type="text"] {
            padding: 8px;
            width: 200px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #99ddff;
        }
    </style>
    
    
<title>Add new Services</title>
</head>
<body>
<center>
<form action="insert" method="post">
<fieldset>
  <legend>New Service Details</legend>
		<table>
		<tr>
		<th>Service Name:</th>
		<th><input type="text" name="S_name"></th>
		</tr>
		<tr>
		<th>Service charge :</th>
		<th><input type="text" name="S_chrg" ></th>
		</tr>
		<tr>
		<th>Service Description: </th>
		<th><input type="text" name="S_des"></th>
		</tr>
		</table>
		
		</br></br>
		
		<input type="submit" name="submit" value="Add">
		</fieldset>
	</form>
</center>

</body>
</html>