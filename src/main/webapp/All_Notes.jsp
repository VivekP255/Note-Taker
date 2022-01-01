<%@page import="java.util.Formatter"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Note Taker</title>
<link rel = "icon" href = img/notepad.png type = "image/x-icon">
<%@include file="All_js_css.jsp"%>
</head>
<body>
	<Div class="container-fluid p-0 m-0">

		<%@include file="navbar.jsp"%>
		<br>
	</div>
	<Div class="container center">
		<h1>All Notes</h1>

		<div class="row">


			<div class="col-12">

				<%
					Session s = FactoryProvider.getFactory().openSession();
					Query q = s.createQuery("from Note");
					List<Note> list = q.list();
					for (Note note : list) {
				%>

				<div class="card mt-5" style="width:50">
					<img class="card-img-top m-4" style="max-width:75px" src="img/notepad.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text"><%=note.getContent() %></p>
						<b class="text-primary">Last Updated : <%=note.getAddedDate() %></b>
						<br>
						<div class="container text-center">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger ">Delete</a> &nbsp;
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary ">Update</a>
						</div>
					</div>
				</div>

				<%
					}
					s.close();
				%>


			</div>
		</div>


	</Div>


</body>
</html>