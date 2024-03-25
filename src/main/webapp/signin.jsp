<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign In</title>

<%@include file="all_cs_js.jsp"%>
</head>
<body class="SignBody">
	<div class="logo">
		<a href="index.jsp"><img alt="" src="img/Ruzu.png"></a>
	</div>


	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container-sin">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="img/signin.jpg" alt="sing up image">
						</figure>
						<a href="createac.jsp" class="signup-image-link">Create an
							account</a><br>
							<a href="Adminlogin.jsp" class="signup-image-link">Admin SignIn</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title-sup">Sign In</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="email"><ion-icon
										name="person-circle-outline"></ion-icon></label> <input type="email"
									name="email" id="email" placeholder="UserName" required />
							</div>
							<div class="form-group">
								<label for="password"><ion-icon name="key-outline"></ion-icon></label><input
									type="password" name="password" id="password"
									placeholder="Password" required />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
								<div id="loginSpinner" class="spinner"></div>
							</div>
						</form>


						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><ion-icon name="logo-google"></ion-icon></a></li>
								<li><a href="#"><ion-icon name="logo-facebook"></ion-icon></a></li>
								<li><a href="#"><ion-icon name="logo-twitter"></ion-icon></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
	<div class="all-foot">
		<%@include file="footer.jsp"%>
		<%@include file="wave.jsp"%>
		<%@include file="socialicon.jsp"%>
	</div>

</body>
</html>