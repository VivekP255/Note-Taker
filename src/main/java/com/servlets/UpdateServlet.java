package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String Title=request.getParameter("title");
			String Content=request.getParameter("content");
			int noteId=Integer.parseInt(request.getParameter("noteId").trim());
			Session s=FactoryProvider.getFactory().openSession();
			Transaction trx=s.beginTransaction();
			
			Note note=s.get(Note.class, noteId);
			note.setTitle(Title);
			note.setContent(Content);
			note.setAddedDate(new Date());
			
			
			trx.commit();
			s.close();
			
			response.sendRedirect("All_Notes.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
