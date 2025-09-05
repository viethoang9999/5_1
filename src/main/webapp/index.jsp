<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 40px;
	line-height: 1.6;
}

h1 {
	color: teal;
}

.form-group {
	display: flex;
	width: 18rem;
	justify-content: space-between;
	margin-bottom: 8px
}
</style>
<body>

	<h1>Join our email list</h1>
	<span> To join our email list, enter your name and email address
	</span>
	<br>

	<p>
		<i>${message}</i>
	</p>
	<form action="emailList" method="POST">
		<input type="hidden" name="action" value="add">
		<div class="form-group">
			<label>Email:</label> <input value="${ user.email}" id="email"
				name="email" type="text" />
		</div>
		<div class="form-group">
			<label>First Name:</label> <input value="${ user.firstName}"
				id="firstName" name="firstName" type="text" />
		</div>
		<div class="form-group">
			<label>Last Name:</label> <input value="${ user.lastName}"
				id="lastName" name="lastName" type="text" />
		</div>
		<br>
		<button>join now</button>
	</form>

</body>
</html>
