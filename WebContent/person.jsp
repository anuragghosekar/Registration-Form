<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<title>Person's Info</title>
</head>
<body>
<form action="./aadhaar" method="post">


	<div class="container">
		<div class="row"><!-- row 1 -->
			<h1 align="center"><strong>Person's Info</strong></h1>
		</div>
		<hr>
		<div class="row"><!-- row 2 -->
			<div class="col">
					<input type="hidden" name="page" value="person"/>
				<div class="row">
					<div class="col-md-6">NAME</div>
					<div class="col-md-6">
						<input class="form-control form-control-sm" type="text" name="name" placeholder="Enter Your Name"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">DATE OF BIRTH</div>
					<div class="col-md-6">
						<input class="form-control form-control-sm" type="date" name="dob"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">GENDER</div>
					<div class="col-md-6">
						<input  type="radio"  value="male" name="gender"/>Male	
						<input  type="radio"  value="female" name="gender"/>Female	
						<input  type="radio"   value="transgender" name="gender"/>Transgender
					</div>
				</div>
				<br>
				<div class="row">
						<div class="col" align="center">
							<input class="btn btn-info" type="submit" value="RESET" />
							<input class="btn btn-info" type="submit" value="NEXT"/>
						</div>
					</div>
			</div>
		</div>
		
	
	</div>
	</form>
</body>
</html>