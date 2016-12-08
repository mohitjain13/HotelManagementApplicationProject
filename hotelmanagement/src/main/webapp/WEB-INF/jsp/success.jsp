<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>success</title>
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
         <link href="/css/hotel.css" rel="stylesheet"/>
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

      
</head>
<body>
<h1><marquee>Welcome to Mindtree Hotel Booking System</marquee></h1>
 <h2>Successfully booked Hotel </h2>
 <br><br>
  <h2>Your booking reference Number is :  ${RefernceNumber}</h2>
  <br>
  <br>
  <h3>Amount Payable is : Rs.${amount} only</h3>
  <br>
  <input type="button" value="Back" onclick="javascript:window.location='/'">

</body>
</html>

    