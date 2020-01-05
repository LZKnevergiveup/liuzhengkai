package com.unsi.servlet_schedule;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.ScheduleDAO;
import com.unsi.vo.ScheduleVO;

public class AddscheduleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			Integer Userid = Integer.valueOf(request.getParameter("Userid"));
			String schedule_content = request.getParameter("schedule_content");
			String schedule_date = request.getParameter("schedule_date");
			ScheduleVO schdualevo = new ScheduleVO(Userid,schedule_content,schedule_date);
//			System.out.println(schdualevo);
			ScheduleDAO sdao = new ScheduleDAO();
			if(sdao.addSchedule(schdualevo)!=0){
				response.sendRedirect("SeeAllScheduleServlet");
			}
			
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request,response);
		
	}

}
