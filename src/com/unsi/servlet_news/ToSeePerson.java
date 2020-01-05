package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
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

public class ToSeePerson extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		UPDAO updao = new UPDAO();
		List<UPVO> UPlist = new ArrayList<UPVO>();
		HttpSession session = request.getSession();
		Integer Userid = (Integer)session.getAttribute("Userid");
		UPlist = updao.selectAllUP(Userid);
		UPVO upvo = new UPVO(); 
		HashMap map = new HashMap();
		for(int i = 0;i<UPlist.size();i++){
			upvo = UPlist.get(i);
			PersonVO pervo = new PersonDAO().PersonidSearch(upvo.getPerson_id());
			map.put(upvo.getUP_id(),pervo);
		}
		request.setAttribute("map",map);

		request.getRequestDispatcher("/NewsJSP/Personlist.jsp").forward(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
