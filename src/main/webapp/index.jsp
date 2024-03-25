<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Finding The Silence Between Goodbye</title>
<%@include file="all_cs_js.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%
		if (request.getSession(false) != null && request.getSession(false).getAttribute("userLoggedIn") != null) {
		%>
		<%@include file="Navbar.jsp"%>

		<%
		} else if (request.getSession(false) != null && request.getSession(false).getAttribute("adminLoggedIn") != null) {
		%>
		<%@include file="adminNavbar.jsp"%>
		<%
		} else {
		%>
		<%@include file="Navbar.jsp"%>
		<%
		}
		%>
	</div>
	<div class="Slide">
		<%@include file="slide.jsp"%>
	</div>
	<div class="bus">
		<%@include file="busform.jsp"%>
	</div>
	<h2 style="text-align: center; margin-top: 100px;">Top
		Destinations in North-East, India</h2>
	<div class="cards">
		<%@include file="card.jsp"%>
	</div>
	<div class="foot p-0 m-0">
		<%@include file="footer.jsp"%>
	</div>
	<div class="wavee">
		<%@include file="wave.jsp"%>
	</div>
	<div class="socioicon">
		<%@include file="socialicon.jsp"%>
	</div>
</body>
</html>