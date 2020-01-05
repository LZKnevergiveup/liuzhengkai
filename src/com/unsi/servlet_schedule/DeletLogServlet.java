package com.unsi.servlet_schedule;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.LogDAO;
import com.unsi.vo.LogVO;


public class DeletLogServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer log_id =  Integer.valueOf(request.getParameter("log_id"));
		LogVO logvo = new LogVO(log_id);
		LogDAO logdao = new LogDAO();
		if(logdao.DeletLog(logvo)!=0){
			response.sendRedirect("SeeAllLogServlet");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
