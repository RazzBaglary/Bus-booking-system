<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Bus</title>
<%@include file="all_cs_js.jsp"%>
</head>
<body class="addbus">
	<div class="logo">
		<a href="index.jsp"><img alt="" src="img/Ruzu.png"></a>
	</div>
	<div class="container-addbus">
		<h2>Add Buses</h2>
		<form action="addbus" method="post">
			<label for="busName">Bus Name:</label> <input type="text"
				id="busName" name="busName" required> <label for="busNumber">Bus
				Number:</label> <input type="text" id="busNumber" name="busNumber" required>

			<label for="source">Source:</label> <input type="text" id="source"
				name="source" required> <label for="destination">Destination:</label>
			<input type="text" id="destination" name="destination" required>

			<label for="contactNumber">Contact Number:</label> <input type="text"
				id="contactNumber" name="contactNumber" required> <label
				for="busType">Bus Type:</label> <select id="busType" name="busType"
				required>
				<option value="">Select Bus Type</option>
				<option value="Non A/C Seater / Sleeper (2+1)">Non A/C
					Seater / Sleeper (2+1)</option>
				<option value="A/C Seater/Sleeper (2+1)">A/C Seater/Sleeper
					(2+1)</option>
			</select> <label for="seatCapacity">Seat Capacity:</label> <input
				type="number" id="seatCapacity" name="seatCapacity" required>

			<label for="departureTime">Departure Time:</label> <input type="time"
				id="departureTime" name="departureTime" required> <label
				for="arrivalTime">Arrival Time:</label> <input type="time"
				id="arrivalTime" name="arrivalTime" required>
				
				<label for="fare">Fare:</label> <input type="text"
				id="fare" name="fare" required>
				<label for="duration">Duration:</label> <input type="text"
				id="duration" name="duration"  required>
				<label for="pickupPoint">Pickup Point:</label> <input type="text"
				id="pickupPoint" name="pickupPoint" required>
				<label for="dropPoint">Drop Point:</label> <input type="text"
				id="dropPoint" name="dropPoint" required>

			<div class="checkbox-group">
				<label for="mTicketSupport">M-Ticket Support:</label> <input
					type="checkbox" id="mTicketSupport" name="mTicketSupport">
			</div>

			<div class="checkbox-group">
				<label for="deepCleanedBuses">Deep Cleaned Buses:</label> <input
					type="checkbox" id="deepCleanedBuses" name="deepCleanedBuses">
			</div>

			<div class="checkbox-group">
				<label for="chargingPoint">Charging Point:</label> <input
					type="checkbox" id="chargingPoint" name="chargingPoint">
			</div>

			<div class="checkbox-group">
				<label for="pillow">Pillow:</label> <input type="checkbox"
					id="pillow" name="pillow">
			</div>

			<div class="checkbox-group">
				<label for="usbPort">USB Port for Charger:</label> <input
					type="checkbox" id="usbPort" name="usbPort">
			</div>

			<div class="checkbox-group">
				<label for="readingLight">Reading Light:</label> <input
					type="checkbox" id="readingLight" name="readingLight">
			</div>

			<label for="submit"></label> <input
				type="submit" value="Submit">
		</form>
	</div>
	<div class="all-foot">
		<%@include file="footer.jsp"%>
		<%@include file="wave.jsp"%>
		<%@include file="socialicon.jsp"%>
	</div>
	
	
	
</body>
</html>
