
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"/>
<jsp:include page="style.jsp"/>

<%
Object loginObject=session.getAttribute("LoginUser");
if(loginObject==null)
{
	response.sendRedirect("login.jsp");
}
%>
<body>
<form action="./aadhaar" method="post">



	<jsp:include page="loginbar.jsp"/>
		
		<div class="row header">
			<div class="col-md-4"></div>
			<div class="col-md-4"><h1 align="center">Aadhaar Application</h1></div>
			<div class="col-md-4"><h6 align="right"><a href="person.jsp"><button type="button" class="btn btn-outline-success"><strong>New Registration</strong></button></a></h6></div>
			
		</div>
		
		<jsp:include page="aadhaarlist.jsp"/>
		<br>
		<jsp:include page="footer.jsp"/>
		
	
</form>
</body>
</html>