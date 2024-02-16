<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
  margin: 0;
}

.interface {
  max-width: 300px;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
  display: flex;
  flex-direction: column;
}

input {
  margin-bottom: 10px;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type="tel"],
input[type="password"] {
  width: 90%;
}

input[type="submit"] {
  background-color: #4caf50;
  color: white;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
}


</style>
</head>
<body>
<div class="interface">
<form action="verify-by-phone">
		<input type="tel" name="phone" placeholder="Enter the phone Number"><br>
		<input type="password" name="password" placeholder="Enter Your Password">
		<input type="submit" value="Login">
	</form>
</div>
</body>
</html>