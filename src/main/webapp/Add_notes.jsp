<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes : Note Taker</title>
<link rel = "icon" href = img/notepad.png type = "image/x-icon">
<%@include file="All_js_css.jsp"%>
</head>
<body>
	<Div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</Div>
	<br>
	<div class="container heading">
		<h1>Please fill your note details</h1>
	</div>
	<!--    Forms -->
	<form action="SaveNoteServlet" method="post">

		<div class="form-group center">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input 
				name="title"
				required="required" 
				type="text"
				class="form-control" 
				id="title" 
				aria-describedby="emailHelp"
				placeholder="Enter Note title here"> 
				
			</div>
			<div class="form-group">
				<label for="Content">Note Description</label>
				<textarea
				name="content" 
				required id="content" 
				placeholder="Enter your content here"
				class="form-control" 
				style="height: 220px;">
				</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">ADD</button>
			</div>
	</form>

</body>
</html>