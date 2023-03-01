<%@page import="org.nlt.model.Aadhaars"%>
<%@page import="org.nlt.controller.ParentInterface"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String id=request.getParameter("id");
    ParentInterface.ses.beginTransaction();
    Aadhaars aadhaar=(Aadhaars)ParentInterface.ses.get(Aadhaars.class, Integer.parseInt(id));
    ParentInterface.ses.getTransaction().commit(); 
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Aadhaar Content</title>
</head>
<body>


<form action="./aadhaar" method="post">
	<div class="row">
			<div class="col">
					<input type="hidden" name="page" value="updateaadhaarcontent"/>
					<input type="hidden" name="aid" value="<%=aadhaar.getId()%>"/>
			<div class="row">
					<div class="col-md-6">NAME</div>
					<div class="col-md-6">
						<input class="form-control form-control-sm" type="text" name="name" value="<%=aadhaar.getName()%>"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">DATE OF BIRTH</div>
					<div class="col-md-6">
						<input class="form-control form-control-sm" type="date" name="dob"  value="<%=aadhaar.getDob()%>"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">GENDER</div>
					<div class="col-md-6">
						<input  type="radio"  value="male" name="gender" value="Male" <%=aadhaar.getGender().equalsIgnoreCase("Male")?"checked":"" %>/>Male	
						<input  type="radio"  value="female" name="gender" value="Female" <%=aadhaar.getGender().equalsIgnoreCase("Female")?"checked":"" %>/>Female	
						<input  type="radio"  value="transgender" name="gender" value="Transgender" <%=aadhaar.getGender().equalsIgnoreCase("Transgender")?"checked":"" %>/>Transgender
					</div>
				</div>
				<br>
				<div class="row">
			<div class="col">
			<input type="hidden" name="page" value="contact" />
			
				<div class="row">
					<div class="col-md-6">PHONE NUMBER</div>
					<div class="col-md-6">
						<input class="form-control form-control-sm" type="text" name="phone"  value="<%=aadhaar.getPhone()%>"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">EMAIL ID</div>
					<div class="col-md-6">
						<input class="form-control" type="email" name="email"  value="<%=aadhaar.getEmail()%>"/>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6" >ADDRESS</div>
					<div class="col-md-6">
					<textarea class="form-control" rows="3" name="address"><%=aadhaar.getAddress()%></textarea>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">PHONE</div>
					<div class="col-md-6">
						<input class="form-control" type="" name="text"  value="<%=aadhaar.getPhone()%>"/>
					</div>
				</div>
				<br>
				<div class="row">
			<div class="col">
			<input type="hidden" name="page" value="education" />
				<div class="row">
					<div class="col-md-6">EDUCATION</div>
					<div class="col-md-6">
 					<input type="checkbox" name="education" value="SSC" <%=aadhaar.getEducation().contains("SSC")?"checked":""%> />SSC	
 					<input type="checkbox" name="education" value="HSC"  <%=aadhaar.getEducation().contains("HSC")?"checked":""%>/>HSC	
 					<input type="checkbox" name="education" value="BE"   <%=aadhaar.getEducation().contains("BE")?"checked":""%>/>BE
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">LANGUAGES KNOWN</div>
					<div class="col-md-6">
					<input class="form-check-input" type="checkbox" name="languages" value="english" <%=aadhaar.getLanguages().contains("english")?"checked":""%>/>English	
					<input class="form-check-input" type="checkbox" name="languages" value="marathi" <%=aadhaar.getLanguages().contains("marathi")?"checked":""%>/>Marathi	
					<input class="form-check-input" type="checkbox" name="languages" value="hindi" <%=aadhaar.getLanguages().contains("hindi")?"checked":""%>/>Hindi
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-6">HOBBIES</div>
					<div class="col-md-6">
					<input class="form-check-input" type="checkbox" name="hobbies"value="read"<%=aadhaar.getHobbies().contains("read")?"checked":""%>/>Reading	
					<input class="form-check-input" type="checkbox" name="hobbies"value="dance"<%=aadhaar.getHobbies().contains("dance")?"checked":""%>/>Dancing	
					<input class="form-check-input" type="checkbox" name="hobbies"value="sing"<%=aadhaar.getHobbies().contains("sing")?"checked":""%>/>Singing
					</div>
				</div>
				<br>				
				<div class="row">
						<div class="col" align="center">
							<input class="btn btn-info" type="submit" value="RESET" />
							<input class="btn btn-info" type="submit" value="UPDATE" />
						</div>
				   </div>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			
	</form>
</body>
</html>