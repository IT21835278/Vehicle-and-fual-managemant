<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose Update</title>

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

        form {
            width: 300px;
            max-width: 80%;
            padding: 20px;
            background-color: #ffd480;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        input[type="text"] {
            padding: 8px;
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 10px;
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
            background-color: #FFFF00;
        }
    </style>
    
    
    
</head>
<body>

<center>
<h2>Enter editing service ID </h2>
	<form action="choose" method="post">
	Service ID: 
	<input type="text" name="sid"><br>
	<input type="submit" name="submit" value="Go details">
	</form>
</center>



</body>
</html>