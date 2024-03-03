<!-- Navbar -->
<spring:url value="/images/logo.png" var="myLogo" />


<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<style>
/* Add your custom styles here */

/* Navbar styles */
.navbar {
  background-color:#ff69b4;
  border: none;
}

.navbar a {
  color: #fff; /* White text color for navigation links */
}

.navbar a:hover {
  color: #ff5722; /* Orange text color on hover */
}

/* Logo styles */
.navbar img {
  max-width: 120px; /* Adjust the maximum width of the logo */
  height: auto;
  float: left; /* Align the logo to the left */
}

/* Adjust spacing for the navigation links */
.navbar ul.nav {
  padding-top: 10px;
  margin-right: 10px; 
  padding: 10px;
}

/* Style the "Log Out" button */
.mynav .btn-primary {
  background-color: #2196f3; /* Blue background color for the "Log Out" button */
  border: none;
  color: #fff; /* White text color for the button */
}

.mynav .btn-primary:hover {
  background-color: #1976d2; /* Darker blue on hover */
}


</style>
<nav class="navbar navbar-expand-md navbar-light mynav">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
<div class="collapse navbar-collapse" id="myNavbar">
		

					
				<img src="${myLogo}" width="120px" />
					
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="!isAuthenticated()">
					<li><a href="login">Login</a></li>
					<li><a href="register_form">Register</a></li>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Client')">
					 <li><a href="index.jsp"><span class="mylink">Home</span></a></li>
					 <li><a href="converter"><span class="mylink">Currency Conversion</span></a>
					 <li><a href="save_invest_plan"><span class="mylink">Saving and Investment</span></a>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Staff')">
					 <li><a href="#"><span class="mylink">Home</span></a></li>
					 <li><a href="users"><span class="mylink">User Management</span></a></li>
					 
				</sec:authorize>			
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-primary"></input>
					</form>
					</li>
				</sec:authorize>		
			</ul>
		</div>
	</div>
</nav>
