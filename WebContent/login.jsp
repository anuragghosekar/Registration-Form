<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<title>LOGIN PAGE</title>
</head>
<style>
	.container
	{
		padding: 20px;
		width: 1000px;
		border: 10px double #003B73;
		border-radius: 10px;
		margin-top: 100px;
	}
</style>
<%
	Object loginObject=session.getAttribute("LoginUser");
	if(loginObject!=null)
	{
		response.sendRedirect("index.jsp");
	}
%>
<body>
<form action="./aadhaar" method="post">
<input type="hidden" name="page" value="login"/>

<div class="container">
		<div class="row"><!-- row 1 -->
			<h1 align="center"><strong>USER LOGIN</strong></h1>
		</div>
		<hr>
		<div class="row"><!-- row 2 -->
			<div class="col">
				<div class="row">
					<div class="col-md-6">USERNAME</div>
					<div class="col-md-6">
					<input class="form-control form-control-sm" type="text" name="username" placeholder="Enter Your Username"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">PASSWORD</div>
					<div class="col-md-6">
					<input class="form-control form-control-sm" type="password" name="password" placeholder="Enter Your Password"/>
					</div>
				</div>
				<br>
				<div class="row">
						<div class="col" align="center">
							<input class="btn btn-info" type="submit" value="SIGNUP" />
							<input class="btn btn-info" type="submit" value="LOGIN"/>
						</div>
					</div>
			</div>
		</div>
	</div>
</form>
</body>
</html>