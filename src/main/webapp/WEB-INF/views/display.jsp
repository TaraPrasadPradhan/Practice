<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
height: 700px;
width: 100%;
display: flex;
justify-content: center;
align-items: center;

}

.display {
  height: 500px;
  width: 400px;
  background-color: aqua;
  display: inline-block;
  align-items: center;
  justify-content: center;
  border-radius: 10px; 
  overflow: hidden; 
  flex-wrap: wrap;
}

.display h2 {
  text-align: center;
  color: white; /* Optional: Set text color */
  background-color: navy; /* Optional: Set background color for h1 */
  padding: 30px; /* Optional: Add padding to h1 for better appearance */
  border-radius: 5px; /* Optional: Set border-radius for h1 */
  padding-top: 10px;
}
</style>
</head>
<body>
<div class="display">
<h2>User Id:${u.getId()}</h2> 
	<h2>User Name:${u.getName()}</h2> 
	<h2>Email Id:${u.getEmail()}</h2> 
	<h2>Phone Number:${u.getPhone()}</h2> 
	<h2>Gender:${u.getGender()}</h2>
	</div>
</body>
</html>