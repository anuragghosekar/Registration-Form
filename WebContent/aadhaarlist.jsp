<%@page import="org.nlt.model.Aadhaars"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.nlt.controller.ParentInterface"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<div class="row content">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<table class="table">
					<tr>
						<th>ACTION</th>
						<th>AADHAAR NO.</th>
						<th>NAME</th>
						<th>DOB</th>
						<th>PHONE</th>
						<th>EDUCATION</th>
					</tr>
					<%
						Session ses=ParentInterface.ses;
						ses.beginTransaction();
						Query query=ses.createQuery("from Aadhaars where status=1");
						List<Aadhaars> aadhaarList=query.list();
						for(Aadhaars aadhaar:aadhaarList)
						{
					%>
					<tr>
						<td><a href="./updateaadhaar.jsp?id=<%=aadhaar.getId() %>"><img src="images/edit.png"/></a>||<a href="./deleteaadhaar.jsp?id=<%=aadhaar.getId() %>"><img src="images/delete.png"/></a></td>
						<td><%=aadhaar.getId() %></td>
						<td><%=aadhaar.getName() %></td>
						<td><%=aadhaar.getDob() %></td>
						<td><%=aadhaar.getPhone()%></td>
						<td><%=aadhaar.getEducation() %></td>
					</tr>
					<%
						}
					%>
					</table>
			</div>
			<div class="col-md-2"></div>
		</div>