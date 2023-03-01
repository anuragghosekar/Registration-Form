<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<title>Person's Contact</title>
</head>
<body>
<form action="./aadhaar" method="post">

	<div class="container">
		<div class="row"><!-- row 1 -->
			<h1 align="center"><strong>Person's Contact</strong></h1>
		</div>
		<hr>
		<div class="row"><!-- row 2 -->
			<div class="col">
			<input type="hidden" name="page" value="contact" />
			
				<div class="row">
					<div class="col-md-6">PHONE NUMBER</div>
					<div class="col-md-6">
						<input class="form-control form-control-sm" type="text" name="phone" placeholder="Enter Your Phone Number"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">EMAIL ID</div>
					<div class="col-md-6">
						<input class="form-control" type="email" name="email" placeholder="Enter Your Email Address"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6" >ADDRESS</div>
					<div class="col-md-6">
					<textarea class="form-control" rows="3" name="address"></textarea>
					</div>
				</div>
				<br>
				<div class="row">
						<div class="col" align="center">
							<input class="btn btn-info" type="reset" value="RESET" />
							<input class="btn btn-info" type="submit" value="NEXT" />
						</div>
					</div>
			</div>
		</div>
		
	
	</div>
</form>
</body>
</html>