<%@page import="com.entity.bus"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Success</title>
<style>
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f5f5;
}

.delete-btn {
	background-color: #f44336;
	color: white;
	padding: 6px 10px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
}

.logo img {
	height: 80px;
	margin-left: 20px;
}
</style>
</head>
<body class="buslist">
	<div class="logo">
		<a href="index.jsp"><img alt="" src="img/Ruzu.png"></a>
	</div>


	<h2>Bus Details</h2>

	<table>
		<thead>
			<tr>
				<th>Bus Name</th>
				<th>Bus Number</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Contact Number</th>
				<th>Bus Type</th>
				<th>Seat Capacity</th>
				<th>Departure Time</th>
				<th>Arrival Time</th>
				<th>Duration</th>
				<th>Pick-up Point</th>
				<th>Drop Point</th>
				<th>Fare</th>
				<th>M-Ticket Support</th>
				<th>Deep Cleaned Buses</th>
				<th>Charging Point</th>
				<th>Pillow</th>
				<th>USB Port</th>
				<th>Reading Light</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>

			<%
			if (request.getAttribute("listOfBuses") != null && !((List<bus>) request.getAttribute("listOfBuses")).isEmpty()) {
			%>
			<%
			// Iterate over the list of bus details and display each row in the table
			for (bus b : (List<bus>) request.getAttribute("listOfBuses")) {
			%>
			<tr>
				<td><%=b.getBusName()%></td>
				<td><%=b.getBusNumber()%></td>
				<td><%=b.getSource()%></td>
				<td><%=b.getDestination()%></td>
				<td><%=b.getContactNumber()%></td>
				<td><%=b.getBusType()%></td>
				<td><%=b.getSeatCapacity()%></td>
				<td><%=b.getDepartureTime()%></td>
				<td><%=b.getArrivalTime()%></td>
				<td><%=b.getDuration()%></td>
				<td><%=b.getPickupPoint()%></td>
				<td><%=b.getDropPoint()%></td>
				<td><%=b.getFare()%></td>
				<td><%=b.getmTicketSupport()%></td>
				<td><%=b.getDeepCleanedBuses()%></td>
				<td><%=b.getChargingPoint()%></td>
				<td><%=b.getPillow()%></td>
				<td><%=b.getUsbPort()%></td>
				<td><%=b.getReadingLight()%></td>
				<td>
					<form action="deleteBus" method="post">
						<input type="hidden" name="id" value="<%=b.getBusId()%>">
						<button type="submit" class="delete-btn">Delete</button>
					</form>
				</td>
			</tr>
			<%
			}
			}
			%>
		</tbody>
	</table>

</body>
</html>
