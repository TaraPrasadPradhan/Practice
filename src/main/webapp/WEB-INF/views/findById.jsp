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

input.first {
  width: 90%;
  margin: auto; /* Centering the input */
}

input.find {
  background-color: #4caf50;
  color: white;
  cursor: pointer;
}

input.find:hover {
  background-color: #45a049;
}


</style>
</head>
<body>
<div class="interface">
<form action="find-by-id">
		<input class="first" type="number" name="id" placeholder="Enter the User Id"><br>
		<input class="find" type="submit" value="Find">
	</form>
</div>
</body>
</html>

