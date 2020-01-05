package com.unsi.servlet_metting;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.NoticeDAO;
import com.unsi.dao.ScheduleDAO;
import com.unsi.vo.NoticeVO;
import com.unsi.vo.ScheduleVO;

public class UpdateNoticeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer notice_id = Integer.valueOf(request.getParameter("notice_id"));
		Integer Userid = Integer.valueOf(request.getParameter("Userid"));
		
		String notice_time = request.getParameter("notice_time");
		String notice_title = request.getParameter("notice_title");
		String notice_content = request.getParameter("notice_content");
		NoticeVO notvo = new NoticeVO(notice_id,Userid,notice_title,notice_content,notice_time);
//		System.out.println(notvo);
		NoticeDAO logdao = new NoticeDAO();
		if(logdao.updateNotice(notvo)!=0){
			response.sendRedirect("SeeAllNoticeServlet");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
