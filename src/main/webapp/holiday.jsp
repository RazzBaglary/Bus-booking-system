<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Holiday Packages</title>
<%@include file="all_cs_js.jsp"%>
</head>
<body class="holiday">
	<div class="container-fluid p-0 m-0">
		<%
		if (request.getSession(false) != null && request.getSession(false).getAttribute("userLoggedIn") != null) {
		%>
		<%@include file="Navbar.jsp"%>
		
		<%
		}
		else if (request.getSession(false) != null && request.getSession(false).getAttribute("adminLoggedIn") != null) {
		%>
		<%@include file="adminNavbar.jsp"%>
		<%
		}else {
			
			%>
			<%@include file="Navbar.jsp"%>
		<%
		}
		%>
	</div>
	<div class="container-holi">
		<div class="package">
			<img src="img/iimm.jpg" alt="Tropical Paradise Getaway">
			<div class="package-details">
				<h2>Tropical Paradise Getaway</h2>
				<p>
					<strong>Destination:</strong> Maldives
				</p>
				<p>
					<strong>Duration:</strong> 7 days / 6 nights
				</p>
				<p>
					<strong>Accommodation:</strong> Beachfront bungalow
				</p>
				<p>
					<strong>Activities:</strong> Snorkeling, sunset cruises, spa
					treatments
				</p>
				<p>
					<strong>Price:</strong> $2500 per person
				</p>
				<a href="#" class="btn">Book Now</a>
			</div>
		</div>

		<div class="package">
			<img src="img/iimm.jpg" alt="European Adventure Tour">
			<div class="package-details">
				<h2>European Adventure Tour</h2>
				<p>
					<strong>Destinations:</strong> Paris, Rome, Barcelona
				</p>
				<p>
					<strong>Duration:</strong> 10 days / 9 nights
				</p>
				<p>
					<strong>Accommodation:</strong> 4-star hotels
				</p>
				<p>
					<strong>Activities:</strong> City tours, museum visits, gourmet
					dining
				</p>
				<p>
					<strong>Price:</strong> $3500 per person
				</p>
				<a href="#" class="btn">Book Now</a>
			</div>
		</div>
		
		<div class="package">
			<img src="img/iimm.jpg" alt="European Adventure Tour">
			<div class="package-details">
				<h2>European Adventure Tour</h2>
				<p>
					<strong>Destinations:</strong> Paris, Rome, Barcelona
				</p>
				<p>
					<strong>Duration:</strong> 10 days / 9 nights
				</p>
				<p>
					<strong>Accommodation:</strong> 4-star hotels
				</p>
				<p>
					<strong>Activities:</strong> City tours, museum visits, gourmet
					dining
				</p>
				<p>
					<strong>Price:</strong> $3500 per person
				</p>
				<a href="#" class="btn">Book Now</a>
			</div>
		</div>
		
		<div class="package">
			<img src="img/iimm.jpg" alt="European Adventure Tour">
			<div class="package-details">
				<h2>European Adventure Tour</h2>
				<p>
					<strong>Destinations:</strong> Paris, Rome, Barcelona
				</p>
				<p>
					<strong>Duration:</strong> 10 days / 9 nights
				</p>
				<p>
					<strong>Accommodation:</strong> 4-star hotels
				</p>
				<p>
					<strong>Activities:</strong> City tours, museum visits, gourmet
					dining
				</p>
				<p>
					<strong>Price:</strong> $3500 per person
				</p>
				<a href="#" class="btn">Book Now</a>
			</div>
		</div>
		
		<div class="package">
			<img src="img/iimm.jpg" alt="European Adventure Tour">
			<div class="package-details">
				<h2>European Adventure Tour</h2>
				<p>
					<strong>Destinations:</strong> Paris, Rome, Barcelona
				</p>
				<p>
					<strong>Duration:</strong> 10 days / 9 nights
				</p>
				<p>
					<strong>Accommodation:</strong> 4-star hotels
				</p>
				<p>
					<strong>Activities:</strong> City tours, museum visits, gourmet
					dining
				</p>
				<p>
					<strong>Price:</strong> $3500 per person
				</p>
				<a href="#" class="btn">Book Now</a>
			</div>
		</div>
		
		<div class="package">
			<img src="img/iimm.jpg" alt="European Adventure Tour">
			<div class="package-details">
				<h2>European Adventure Tour</h2>
				<p>
					<strong>Destinations:</strong> Paris, Rome, Barcelona
				</p>
				<p>
					<strong>Duration:</strong> 10 days / 9 nights
				</p>
				<p>
					<strong>Accommodation:</strong> 4-star hotels
				</p>
				<p>
					<strong>Activities:</strong> City tours, museum visits, gourmet
					dining
				</p>
				<p>
					<strong>Price:</strong> $3500 per person
				</p>
				<a href="#" class="btn">Book Now</a>
			</div>
		</div>

	</div>
	
	<%@include file="footer.jsp" %>
	<%@include file="wave.jsp" %>
	<%@include file="socialicon.jsp" %>

</body>
</html>