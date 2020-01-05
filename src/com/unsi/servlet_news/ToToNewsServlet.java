package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unsi.dao.PersonDAO;
import com.unsi.dao.UPDAO;
import com.unsi.vo.PersonVO;
import com.unsi.vo.UPVO;

public class ToToNewsServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		PersonVO pervo = new PersonVO(); 
		UPDAO updao = new UPDAO();
		PersonDAO perdao = new PersonDAO();
		List<UPVO> UPlist = new ArrayList<UPVO>();
		List<PersonVO> perlist = new ArrayList<PersonVO>();
		HttpSession session = request.getSession();
		Integer Userid = (Integer)session.getAttribute("Userid");
		UPlist = updao.selectAllUP(Userid);
		for(UPVO upvo : UPlist){
			pervo = perdao.PersonidSearch(upvo.getPerson_id());
			perlist.add(pervo);
		}

		request.setAttribute("perlist",perlist);
//		System.out.println(perlist);
		request.getRequestDispatcher("/NewsJSP/ToNews.jsp").forward(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
