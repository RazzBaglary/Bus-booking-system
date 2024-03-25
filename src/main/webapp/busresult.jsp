<%@page import="com.entity.bus"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus search results</title>
</head>
<body>
	<h1>Buses</h1>
	<table border="1">
		<tr>
			<th>Bus Name</th>
			<th>Bus Type</th>
			<th>Departure Time</th>
			<th>Arrival Time</th>
			<th>Duration</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Fare</th>
			<th>Book Now</th>
		</tr>
		<%
		//if (request.getAttribute("Buses") != null && !((List<bus>) request.getAttribute("Buses")).isEmpty()) {
			if(request.getAttribute("buses") != null && !((List<bus>)request.getAttribute("buses")).isEmpty()){
		%>
		<%
		// Iterate over the list of bus details and display each row in the table
		for (bus b : (List<bus>) request.getAttribute("buses")) {
		%>
		<tr>
			<td><%=b.getBusName()%></td>
			<td><%=b.getBusType()%></td>
			<td><%=b.getDepartureTime()%></td>
			<td><%=b.getArrivalTime()%></td>
			<td><%=b.getDuration()%></td>
			<td><%=b.getSource()%></td>
			<td><%=b.getDestination()%></td>
			<td><%=b.getFare()%></td>
			<td><a href="bus_ticket.jsp?busId=<%=b.getBusId()%>">Book
					Now</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	%>
	<p>No buses found for the given source and destination.</p>
	<%
	}
	%>
</body>
</html>
