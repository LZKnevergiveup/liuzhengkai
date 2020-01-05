package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.NewsDAO;
import com.unsi.vo.NewsVO;

public class AddNewsServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer Userid = Integer.valueOf(request.getParameter("Userid"));
		Integer personid = Integer.valueOf(request.getParameter("personid"));
		String news_content = request.getParameter("news_content");
		String news_time = request.getParameter("news_time");
		NewsVO news = new NewsVO(Userid,personid,news_content,news_time);
		NewsDAO newsdao = new NewsDAO();
		if(newsdao.AddNews(news)!=0){
			response.sendRedirect("ToSeeAllNewsServlet");
		}
		
	}

}
