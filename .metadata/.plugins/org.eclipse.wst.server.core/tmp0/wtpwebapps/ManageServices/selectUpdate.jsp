<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Details</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        table {
            width: 400px;
            max-width: 90%;
            margin-bottom: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        th {
            text-align: left;
            padding: 10px;
            background-color: #f2f2f2;
            font-weight: bold;
        }

        td {
            padding: 10px;
        }
        
        center {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        
        input[type="button"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #ff3385;
        }
        </style>

</head>
<body>
	<c:forEach var="ser" items="${SerDetails}">
	 
	<c:set var="sid" value="${ser.sid}"/>
	<c:set var="sName" value="${ser.sName}"/>
	<c:set var="scharge" value="${ser.scharge}"/>
	<c:set var="sDes" value="${ser.sDes}"/>
	<center>
	<h2>Service Details</h2>
	<table>
	<tr>
	<th>ServiceID:</th>
	<th>${ser.sid}</th>
	</tr>
	<tr>
	<th>Service Name:</th>
	<th>${ser.sName}</th>
	</tr>
	<tr>
	<th>Service Charge:</th>
	<th>${ser.scharge}</th>
	</tr>
	<tr>
	<th>Description :</th>
	<th>${ser.sDes}</th>
	</tr>
	</table>
	</c:forEach>
	
	
	<c:url value="Update.jsp" var="SerUpdt">
		<c:param name="sid" value="${sid}"/>
		<c:param name="sName" value="${sName}"/>
		<c:param name="scharge" value="${scharge}"/>
		<c:param name="sDes" value="${sDes}"/>
	</c:url>
	<a href="${SerUpdt}">
		<input type="button" name="update" value="update Service Details">
	</a><br><br>
	
	<c:url value="Delete.jsp" var="SerDlt">
		<c:param name="sid" value="${sid}"/>
		<c:param name="sName" value="${sName}"/>
		<c:param name="scharge" value="${scharge}"/>
		<c:param name="sDes" value="${sDes}"/>
	</c:url>
	<a href="${SerDlt}">
		<input type="button" name="delete" value="Delete Service">
	</a>
	</center>
	
	
	
	
	

</body>
</html>