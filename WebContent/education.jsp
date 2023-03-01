<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<title>Person's Education</title>
</head>
<body>

<form action="./aadhaar" method="post">

	<div class="container">
		<div class="row"><!-- row 1 -->
			<h1 align="center"><strong>Person's Education</strong></h1>
		</div>
		<hr>
		<div class="row"><!-- row 2 -->
			<div class="col">
			<input type="hidden" name="page" value="education" />
				<div class="row">
					<div class="col-md-6">EDUCATION</div>
					<div class="col-md-6">
 					<input type="checkbox"  name="education" value="SSC" />SSC	
 					<input type="checkbox" name="education" value="HSC"/>HSC	
 					<input type="checkbox" name="education" value="BE"/>BE
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">LANGUAGES KNOWN</div>
					<div class="col-md-6">
					<input class="form-check-input" type="checkbox" name="languages" value="english"/>English	
					<input class="form-check-input" type="checkbox" name="languages" value="marathi"/>Marathi	
					<input class="form-check-input" type="checkbox" name="languages" value="hindi"/>Hindi
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">HOBBIES</div>
					<div class="col-md-6">
					<input class="form-check-input" type="checkbox" name="hobbies"value="read"/>Reading	
					<input class="form-check-input" type="checkbox" name="hobbies"value="dance"/>Dancing	
					<input class="form-check-input" type="checkbox" name="hobbies"value="sing"/>Singing
					</div>
				</div>
				<br>				
				
				<div class="row">
						<div class="col" align="center">
							<input class="btn btn-info" type="submit" value="RESET" />
							<input class="btn btn-info" type="submit" value="SUBMIT" />
						</div>
				   </div>
     		  </div>
		 </div>
    </div>
</form>
</body>
</html>