<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@page import="org.hibernate.Transaction" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Note : Note taker</title>
<link rel = "icon" href = img/notepad.png type = "image/x-icon">
<%@include file="All_js_css.jsp" %>
</head>
<body>
<Div class="container-fluid p-0 m-0" >
   	<%@include file="navbar.jsp" %>
   	<h1> Edit your Note</h1>
   	<br>
   	<%
   
   	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	Session s=FactoryProvider.getFactory().openSession();
	Transaction trx=s.beginTransaction();
	Note note=(Note)s.get(Note.class,noteId);
   	
   	%>
   	
   	<form action="UpdateServlet" method="post">
	
		<div class="form-group center">
		
		<input value="<%= note.getId()%>" name="noteId" type="hidden">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input 
				name="title"
				required="required" 
				type="text"
				class="form-control" 
				id="title" 
				aria-describedby="emailHelp"
				placeholder="Enter Note title here"
				value="<%=note.getTitle() %>"> 
				
			</div>
			<div class="form-group">
				<label for="Content">Note Description</label>
				<textarea
				name="content" 
				required id="content" 
				placeholder="Enter your content here"
				class="form-control" 
				style="height: 220px;"><%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your Note</button>
			<a href="All_Notes.jsp" class="btn btn-danger">Cancel</a> 
			</div>
	</form>
   </Div>
	<br>

</body>
</html>