package com.unsi.servlet_metting;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unsi.dao.NoticeDAO;
import com.unsi.vo.NoticeVO;

public class DeletNoticeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer notice_id =  Integer.valueOf(request.getParameter("notice_id"));
		NoticeVO notvo = new NoticeVO(notice_id);
		NoticeDAO notdao = new NoticeDAO();
		if(notdao.DeletNotice(notvo)!=0){
			response.sendRedirect("SeeAllNoticeServlet");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
