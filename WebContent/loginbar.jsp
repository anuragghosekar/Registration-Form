<%@page import="org.hibernate.Session"%>
<%@page import="org.nlt.controller.ParentInterface"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style>
	.container
	{
		border: 4px double black;
		border-radius: 10px;	
	}
	.col-md-1
	{
		color:red;
		font-family: serif;
	}
	.btn-sm 
	{
 		 padding: 0.05rem 0.1rem;
  		 font-size: 0.800rem;
  		 border-radius: 0.3rem;
	}

</style>

<div class="container">
		<div class="row" style="background-color:#003B73; color: white; font-family:monospace; ">
			<div class="col-md-3"><strong>OS:</strong><%=session.getAttribute("OS")%></div>
			<div class="col-md-3"><strong>IP:</strong><%=session.getAttribute("IP") %></div>
			<div class="col-md-3"><strong>Browser:</strong><%=session.getAttribute("Browser") %></div>
			<div class="col-md-2"><strong>Login:</strong><%=session.getAttribute("LoginUser") %></div>
			<div class="col-md-1" align="right"><button type="button" class="btn btn-outline-danger btn-sm"><strong>LOGOUT</strong></button></div>
			
		</div>
	</div>