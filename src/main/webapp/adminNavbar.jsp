<nav class="navbar navbar-expand-lg navbar-dark purple">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><img alt=""
			src="img/Ruzu.png"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="holiday.jsp">Holiday
						Package</a></li>
						
				<li class="nav-item"><a class="nav-link" href="addbus"
					tabindex="-1" aria-disabled="true">Bus Details</a></li>

				<li class="nav-item"><a class="nav-link" href="bookings.jsp"
					tabindex="-1" aria-disabled="true">Bookings</a></li>
				<%
				if (request.getSession(false) != null && request.getSession(false).getAttribute("adminLoggedIn") != null) {
				%>
				<li class="nav-item"><a class="nav-link" href="addbus.jsp"
					tabindex="-1" aria-disabled="true">Add Bus</a></li>
			</ul>


			<a class="btn btn-outline-dark" href="logout" role="button">Logout</a>
			<a class="btn btn-secondary btn2" href="profile.jsp" role="button">Profile</a>
			<%
			} else {
			%>
			<a class="btn btn-outline-dark" href="signin.jsp" role="button">Sign
				In</a> &nbsp; <a class="btn btn-secondary btn2" href="createac.jsp"
				role="button">Create Account</a>

			<%
			}
			%>
		</div>
	</div>
</nav>