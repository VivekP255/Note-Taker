<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="org.hibernate.hql.internal.ast.tree.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@page import="org.hibernate.Transaction"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search : Note taker</title>
<link rel = "icon" href = img/notepad.png type = "image/x-icon">
<%@include file="All_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<Div class="container center">


		<div class="row">


			<div class="col-12">


				<%
					String noteTitle = request.getParameter("search").toString().trim();
					Session s = FactoryProvider.getFactory().openSession();
					Transaction trx = s.beginTransaction();

					/* Query q = s.createQuery("from Note where title=:Title");
					q.setParameter("Title", noteTitle); */
					Query q = s.createQuery("from Note ");

					out.println("<h5>Search result for " + noteTitle + " :" + "</h5>");

					List<Note> list = q.list();

					for (Note note : list) {
						if (note.getTitle().contains(noteTitle) || note.getContent().contains(noteTitle)) {
				%>

				<div class="card mt-5" style="width: 50">
					<img class="card-img-top m-4" style="max-width: 75px"
						src="img/notepad.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<b class="text-primary">Last Updated : <%=note.getAddedDate()%></b>
						<br>
						<div class="container text-center">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger ">Delete</a> &nbsp; <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary ">Update</a>
						</div>
					</div>
				</div>

			


		<%
			}

			}

			trx.commit();

			s.close();
		%>

</div>
		</Div>
	</Div>
	<br>

</body>
</html>