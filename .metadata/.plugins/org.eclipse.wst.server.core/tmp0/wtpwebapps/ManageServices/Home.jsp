<?xml version="1.0" encoding="ISO-8859-1" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
	<jsp:directive.page contentType="text/html; charset=ISO-8859-1" 
		pageEncoding="ISO-8859-1" session="false"/>
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home page</title>
<link rel="stylesheet" href="homestyle.css"/>

</head>
<body>

<center>
<h1><b>service management</b></h1>
</center>
<div class="container">
<center>
	<a href="SeviceList.jsp" class="button">View Service</a><br>
	<a href ="AddNewService.jsp" class="button">Add new services</a></br>
	<a href = "ChooseUpdate.jsp" class="button">Update Services</a>

</center>
</div>

</body>
</html>
</jsp:root>