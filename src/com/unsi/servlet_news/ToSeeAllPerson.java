package com.unsi.servlet_news;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.PersonDAO;
import com.unsi.vo.PersonVO;


public class ToSeeAllPerson extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PersonDAO perdao = new PersonDAO();
		List<PersonVO> perlist = new ArrayList<PersonVO>();
		perlist = perdao.selectAllPerson();
		request.setAttribute("perlist",perlist);
//		System.out.println(perlist);
		request.getRequestDispatcher("/NewsJSP/AllPersonlist.jsp").forward(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
