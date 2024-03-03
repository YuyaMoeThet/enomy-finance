<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="style.css">
<title> HOME </title>
</head>
<style>
/* style.css */
.main {
  background-color: #e6f7ff; /* Light blue */
  padding: 20px;
  text-align: center;
}

.content {
  background-color: #ffffff; /* White */
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

button.cn {
  background-color: #ff6600; /* Bright orange */
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s;
}

button.cn:hover {
  background-color: #ff4500; /* Slightly darker orange on hover */
}
</style>
<body>
 <div class="main">
        <div class="content">
            <h2>Spring-MVC CRUD application </h2>
            <button class="cn"><a href="login">Login to the system !</a></button>
        </div>
    </div>
</body>
</html>
