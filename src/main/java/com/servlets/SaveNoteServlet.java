package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content, new Date());
			Session session = FactoryProvider.getFactory().openSession();
			Transaction trx = session.beginTransaction();

			session.save(note);
			trx.commit();
			session.clear();
			response.setContentType("text/html");
			out.println("<h2 style='text-align:center' >Note saved successfully!</h2>");
			out.println("<h2 style='text-align:center' ><a href='All_Notes.jsp'>Click here to show all notes</a></h2>");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
