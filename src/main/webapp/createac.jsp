<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>

<%@include file="all_cs_js.jsp"%>
</head>
<body class="CreateBody">
	<div class="logo">
		<a href="index.jsp"><img alt="" src="img/Ruzu.png" ></a>
	</div>

	<div class="main-signup">


		<!-- Sing in  Form -->
		<section class="sign-up">
			<div class="container-sinup">
				<div class="signup-content">
					<div class="signup-image">
						<figure>
							<img src="img/signin.jpg" alt="sing up image">
						</figure>
						<h5>Already have Account?</h5>
						<a href="signin.jsp" class="signin-image-link">Click Here</a>
					</div>

					<div class="signup-form">
						<h2 class="form-title-signup">Sign Up</h2>
						<form method="post" action="register" class="register-form"
							id="login-form">
							<div class="form-group-signup">
								<label for="name"><ion-icon name="person-circle-outline"></ion-icon></label>
								<input type="text" name="username" id="username"
									placeholder="Full Name" required />
							</div>
							<div class="form-group-signup">
								<label for="email"><ion-icon name="mail-outline"></ion-icon></label>
								<input type="email" name="email" id="email" placeholder="E-mail"
									required />
							</div>
							<div class="form-group-signup">
								<label for="mobile"><ion-icon
										name="phone-portrait-outline"></ion-icon></label> <input type="text"
									name="mobile" id="mobile" placeholder="Mobile no." required />
							</div>
							<div class="form-group-signup">
								<label for="password"><ion-icon name="key-outline"></ion-icon></label><input
									type="password" name="password" id="password"
									placeholder=" Create Password" required />
							</div>
							<div class="form-group-signup">
								<label for="re-pass"><ion-icon name="key-outline"></ion-icon></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required />
							</div>
							<div class="form-group-signup">
								<label for="gender"><ion-icon name="male-female-outline"></ion-icon></label>
								<select name="gender" id="gender" required>
									<option value="">Select Gender</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
									<option value="other">Other</option>
								</select>
							</div>
							<div class="form-group-check">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" required /><label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button-signup">
								<input type="submit" name="signup" id="signup"
									class="form-submit-signup" value="Create Account" />
							</div>
						</form>
						<div class="social-signup">
							<span class="social-label-signup">Or Signup with</span>
							<ul class="socials-signup">
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