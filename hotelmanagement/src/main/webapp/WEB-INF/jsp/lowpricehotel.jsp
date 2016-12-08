<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LowPriceHotel</title>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
	 <link href="/css/hotel.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
   $(document).ready(function(){

	            $('#city').change(
	            		function() {
	                 var resultHTML='<table><tr><td>HotelName</td><td>Price</td></tr>';
	                 if(!($(this).val()==="SELECT"))
	            $.ajax({
	            	url: "loadLeastPriceHotel",
	            	data:{cityname:$(this).val()},
	            	type:"GET",
	            	dataType:"json",
	            	success: function(result){
	            		
	                $.each(result, function(k, hotelInfo) {
	                	
	                	resultHTML += '<tr><td>'+  hotelInfo.hotelName + '</td><td>' + hotelInfo.pricePerRoom+ '</td></tr>';
	                });
	                resultHTML += '</table>';
	                $("#response").html(resultHTML);
	                }
	            });
	            
	        });
	        });
	    </script>
</head>
<body>
<h1><marquee>Welcome to Mindtree Hotel Booking System</marquee></h1>
<form>
<div id="CitySection">
		<table>

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

	
	</table>
	</div>

<div id="response"></div>

	<div id="button">	    <input type="button" value="Cancel" onclick="javascript:window.location='/'" ></div>
		
		
		
		
		
		
	</form>

</body>
</html>