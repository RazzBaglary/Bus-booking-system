<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookings</title>
<%@include file="all_cs_js.jsp"%>
</head>
<body>

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
	<div class="Booking">
		<form>
			<h4>Mobile Number</h4>
			<input type="text" class="form-control" id="from" name="from"
				placeholder="Enter here" required>
			<button type="submit" class="btn btn-primary">Search
			</button>
		</form>
	</div>
	
	<div class="all-foot">
	<%@include file="footer.jsp" %>
	<%@include file="wave.jsp" %>
	<%@include file="socialicon.jsp" %>
	</div>
	
</body>

</html>