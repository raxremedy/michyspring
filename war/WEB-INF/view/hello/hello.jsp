<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<title><%= request.getAttribute("randolph") %></title>
	</head>
	<body>
		Hello, <%= request.getAttribute("name") %>!
		<br>
	<%
		
		String paramName = "";
			for(Enumeration e = request.getParameterNames(); e.hasMoreElements(); )
			{
				paramName = (String)e.nextElement();
				String paramValues[] = request.getParameterValues(paramName);
				String paramval = "";

				for(int i=0; i<paramValues.length; i++) {
					paramval+=paramValues[i];
				}

				out.println(paramName + " => " + paramval  + "<br/>");
			}
		%>
		<form method='POST'>
			<input type='text' name='michy' value='' />
			<input type='submit' value='Submit'  />
		</form>
	</body>
</html>
