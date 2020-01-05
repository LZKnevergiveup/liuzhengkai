package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.PersonDAO;
import com.unsi.vo.PersonVO;

public class AllProAddServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String Personname = request.getParameter("Personname");
			String Personsex = request.getParameter("Personsex");
			String Personphone = request.getParameter("Personphone");
			String Personmail = request.getParameter("Personmail");
			String Personqq = request.getParameter("Personqq");
			String Personwork = request.getParameter("Personwork");
			String Personaddress = request.getParameter("Personaddress");
			String Personpostal = request.getParameter("Personpostal");
			
			PersonVO pervo = new PersonVO(Personname,Personsex,Personphone,Personmail,Personqq,Personwork,Personaddress,Personpostal);
			PersonDAO pdao = new PersonDAO();
			if(pdao.addPerson(pervo)!=0){
				response.sendRedirect("ToSeeAllPerson");
			}
			
			
//		System.out.println(Personname+Personsex+Personphone+Personmail+Personqq+Personwork+Personaddress+Personpostal);
	}

}
