package com.unsi.servlet_schedule;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unsi.dao.LogDAO;
import com.unsi.vo.LogVO;


public class SeeAllLogServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String Userid = session.getAttribute("Userid").toString();
		LogDAO logdao = new LogDAO();		
		ArrayList<LogVO> loglist = (ArrayList<LogVO>)logdao.selectAllLog(Userid);
		request.setAttribute("loglist",loglist);
		request.getRequestDispatcher("/LogJSP/AllLoglist.jsp").forward(request, response);

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
