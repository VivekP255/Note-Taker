<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
 		<%@include file="All_js_css.jsp" %>
    <title>Note Taker : Home page</title>
    <link rel = "icon" href = img/notepad.png type = "image/x-icon">
  </head>
 
  <body>
   <Div class="container-fluid p-0 m-0" >
   	<%@include file="navbar.jsp" %>
   </Div>
	<br>
   <Div class="card my-2.5" >
   	<img src="img/note.png" class=" container img-fluid mx-auto" style="max-width:275px">
   	<h1 class="text-primary text-uppercase text-center mt-3">Start taking your notes</h1>
   	<div class="container text-center" 	><br>
   	<a href="Add_notes.jsp" class="btn btn-primary">Start </a>
   	
   	</Div> 
   </Div>
	
  <marquee><div class="text-success m-5"><h5>Designed and Developed by Vivek Pawar.</h5></div></marquee> 
  </body>
</html>