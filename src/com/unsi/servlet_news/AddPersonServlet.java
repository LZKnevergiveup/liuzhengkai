package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unsi.dao.UPDAO;
import com.unsi.vo.UPVO;

public class AddPersonServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Integer Userid =  (Integer) session.getAttribute("Userid");
		Integer personid = Integer.valueOf(request.getParameter("person_id"));
		UPVO pvo = new UPVO(Userid,personid);
		UPDAO updao = new UPDAO();
		if(updao.selectUP(pvo)==null){
			if(updao.addUP(pvo)!=0){
				response.sendRedirect("ToSeePerson");
			}
		}else{
			response.sendRedirect("ToSeePerson");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
