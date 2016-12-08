<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Hotel</title>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
   <link href="/css/hotel.css" rel="stylesheet"/>

<script>
$(document).ready(function() {
            $("#datepicker-1").datepicker();
         });
      </script>
<script>
$(document).ready(function() {
            $("#datepicker-2").datepicker();
         });
      </script>

<script>
   $(document).ready(function(){

	            $('#city').change(
	            		function() {
	                 var resultHTML='<option value="">Select City</option>';
	            $.ajax({
	            	url: "loadHotel",
	            	data:{cityname:$(this).val()},
	            	type:"GET",
	            	dataType:"json",
	            	success: function(result){
	            		
	                $.each(result, function(k, hotel) {
	                	
	                	resultHTML += '<option value="' + hotel + '">' + hotel+ '</option>';
	                });
	                $("#dropdown2").html(resultHTML);
	                }
	            });
	            
	        });
	        });
	    </script>
<script>
	    function validateForm(){
	    	var city = $('#city').val();
	    	
	    	var rooms = $('#rooms').val();
	    	var hotel=$('#dropdown2').val();
	    	
	    var currentDate = new Date();
	    var checkinDate = new Date($('#datepicker-1').val());
	    var checkOutDate = new Date($('#datepicker-2').val());
	    
	    if(city==="SELECT"||hotel==="SELECT"){
	    	alert("Please select city and hotel");
	    	return false;
	    }
	    else if((!(checkinDate.getFullYear()===checkOutDate.getFullYear()))&&(checkinDate.getFullYear()<checkOutDate.getFullYear())){
	    	 if ((checkinDate.getDate() < currentDate.getDate())){
	    		   alert("Checkin Date Can not be less than current Date");
	    		   return false;
	    		    }
	    	 else{
	    		 return true;
	    	 }
	    }
	else if(checkinDate.getFullYear()===currentDate.getFullYear()){
	    if ((checkinDate.getDate() < currentDate.getDate())){
	   alert("Checkin Date Can not be less than current Date");
	   return false;
	    }
	    else if(checkinDate.getDate() > checkOutDate.getDate()){
	    	alert("Checkin Date Can not be greater than CheckOut Date");
	 	   return false;
	    	}
	    }
	 else{
		 if(checkinDate.getDate() > checkOutDate.getDate()){
		    	alert("Checkin Date Can not be greater than CheckOut Date");
		 	   return false;
		    	}
	    	
	    }
	    }
	     </script>

</head>
<body>

<h1><marquee>Welcome to Mindtree Hotel Booking System</marquee></h1>
<div>
<form:errors path="hotelBooking.*"></form:errors>
</div>
<div id="error">
<c:if test="${not empty error}">
<c:out value="${error}"></c:out>
</c:if>

</div>

	<form action="/submitHotel" method="post" onsubmit="return validateForm()">
	<div id="outercontainer">
		<table class="data">

			<tr>
				<td>City-Name:</td>
				<td><select id="city" name="city">
						<option value="SELECT">SELECT</option>
						<c:forEach items="${list}" var="item">
							<option value=<c:out value="${item}" />><c:out
									value="${item}" /></option>
						</c:forEach>
				</select></td>
			</tr>

			<tr>
				<td>Hotel-Name:</td>
				<td><select id="dropdown2" name="hotelName">
						<option value="SELECT">Please select City</option>
				</select></td>
			</tr>
		<tr>
		<td>
			CheckIn Date: </td><td> <input type="text" name="checkin" id="datepicker-1"></td>
		</tr>
	<tr>
			<td>CheckOut Date:</td><td> <input type="text" name="checkOut" id="datepicker-2"></td>
		</tr>
<tr>
<td>Number Of Rooms:</td>
<td><input type="text" name="number_of_rooms" id="rooms"></td></tr>

		<tr><td><input type="submit" value="Book Hotel" /></td>
		    <td><input type="button" value="Cancel" onclick="javascript:window.location='/'"></td>
		
		</tr>
		
		
		</table>
		</div>
	</form>

</body>
</html>

