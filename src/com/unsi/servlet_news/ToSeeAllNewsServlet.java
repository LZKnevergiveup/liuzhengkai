package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unsi.dao.NewsDAO;
import com.unsi.dao.PersonDAO;
import com.unsi.vo.NewsVO;
import com.unsi.vo.PersonVO;

public class ToSeeAllNewsServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			NewsDAO newsdao = new NewsDAO();
			PersonDAO perdao = new PersonDAO();
			PersonVO pervo = null;
			HttpSession session = request.getSession();
			Integer user_id = (Integer)session.getAttribute("Userid");
			ArrayList<NewsVO> newslist = (ArrayList<NewsVO>) newsdao.seletAllNews(user_id);
//			System.out.println(newslist);
			LinkedHashMap<NewsVO,PersonVO> newsHashMap = new LinkedHashMap<NewsVO,PersonVO>(); 
			for(NewsVO news :newslist){
				Integer personid = news.getPerson_id();
				pervo = perdao.PersonidSearch(personid);
				newsHashMap.put(news, pervo);
			}
			request.setAttribute("newsHashMap", newsHashMap);
			request.getRequestDispatcher("/NewsJSP/Newslist.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
