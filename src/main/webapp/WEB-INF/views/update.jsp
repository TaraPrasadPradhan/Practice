<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.interface {
  max-width: 400px;
  margin: auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
  display: flex;
  flex-direction: column;
}

label {
  margin-bottom: 5px;
}

input, button {
  margin-bottom: 10px;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

/* Adjustments for radio buttons */
form label {
  display: flex;
  align-items: center;
}

form input[type="radio"] {
  margin-right: 5px;
}

button {
  background-color: #4caf50;
  color: white;
  cursor: pointer;
}

button:hover {
  background-color: #45a049;
}

</style>
</head>
<body>
<div class="interface">
	<form:form modelAttribute="u" action="update" method="POST">
		<form:label path="id">ID</form:label>
		<form:input path="id" />
		<br>
		<form:label path="name">NAME</form:label>
		<form:input path="name" />
		<br>
		<form:label path="phone">PHONE</form:label>
		<form:input path="phone" />
		<br>
		<form:label path="gender">GENDER</form:label>
		<form:radiobutton path="gender" value="male" />Male
<form:radiobutton path="gender" value="female" />Female 
<br>

		<form:label path="email">EMAIL</form:label>
		<form:input path="email" />
		<br>
		<form:label path="password">PASSWORD</form:label>
		<form:input path="password" />
		<br>
		<form:button>SUBMIT</form:button>
	</form:form>

</div>

</body>
</html>