<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	height: 100vh;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(to right, #2c3e50, #3498db);
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.interface {
	margin-top: 50px;
	width: 300px;
	padding: 20px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 10px;
	overflow: hidden;
	flex-wrap: wrap;
	background-color: rgba(255, 255, 255, 0.95);
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
	color: #2c3e50;
	text-align: center;
}

.btn {
	height: 50px;
	width: 200px;
	background-color: #3498db;
	border-radius: 10px;
	margin: 10px;
	overflow: hidden;
	position: relative;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
	transition: background-color 0.3s, color 0.3s, box-shadow 0.3s;
}

.btn a {
	text-decoration: none;
	font-size: 18px;
	font-weight: bold;
	color: #fff;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100%;
	width: 100%;
}

.btn:hover {
	background-color: #3981b9;
	box-shadow: 0 8px 20px black;
	transform: scale(1.1);
}
</style>
</head>
<body>
	<div class="interface">
		<button class="btn">
			<a href="open-register">Register</a>
		</button>
		<button class="btn">
			<a href="open-Update">Update User</a>
		</button>
		<button class="btn">
			<a href="open-view?view=findById">Fetch By Id</a>
		</button>
		<button class="btn">
			<a href="open-view?view=VerifyById">Verify By Id</a>
		</button>
		<button class="btn">
			<a href="open-view?view=VerifyByPhone">Verify By Phone</a>
		</button>
		<button class="btn">
			<a href="open-view?view=VerifyByEmail">Verify By Email</a>
		</button>
		<button class="btn">
			<a href="open-view?view=DeleteBYId">Delete User</a>
		</button>
	</div>
</body>
</html>