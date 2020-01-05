package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.UPDAO;

public class PersonDeletServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer UP_id = Integer.valueOf(request.getParameter("UP_id"));
		UPDAO updao = new UPDAO();
		if(updao.DeletUP(UP_id)!=0){
			response.sendRedirect("ToSeePerson");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
