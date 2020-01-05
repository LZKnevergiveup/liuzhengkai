package com.unsi.servlet_schedule;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.LogDAO;
import com.unsi.dao.ScheduleDAO;
import com.unsi.vo.LogVO;
import com.unsi.vo.ScheduleVO;

public class UpdateLogServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer log_id =  Integer.valueOf(request.getParameter("log_id"));
		Integer Userid = Integer.valueOf(request.getParameter("Userid"));
		String log_date = request.getParameter("log_date");
		String log_title = request.getParameter("log_title");
		String log_content = request.getParameter("log_content");
		SimpleDateFormat sdf  = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = sdf.format(new Date());
		LogVO logvo = new LogVO(log_id,Userid,log_date,log_title,log_content,time);
//		System.out.println(logvo);
		LogDAO logdao = new LogDAO();
//		System.out.println(logvo);
		if(logdao.UpdateLog(logvo)!=0){
			response.sendRedirect("SeeAllLogServlet");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
