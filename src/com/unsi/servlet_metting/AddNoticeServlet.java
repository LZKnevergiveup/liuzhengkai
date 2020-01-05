package com.unsi.servlet_metting;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.NoticeDAO;
import com.unsi.vo.NoticeVO;

public class AddNoticeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer Userid = Integer.valueOf(request.getParameter("Userid"));
		
		String notice_time = request.getParameter("notice_time");
		String notice_title = request.getParameter("notice_title");
		String notice_content = request.getParameter("notice_content");
		NoticeVO logvo = new NoticeVO(Userid,notice_title,notice_content,notice_time);

		NoticeDAO logdao = new NoticeDAO();
		if(logdao.addNotice(logvo)!=0){
			response.sendRedirect("SeeAllNoticeServlet");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
