package com.unsi.servlet_metting;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unsi.dao.NoticeDAO;
import com.unsi.vo.LogVO;
import com.unsi.vo.NoticeVO;

public class SeeAllNoticeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String Userid = session.getAttribute("Userid").toString();
		NoticeDAO netdao = new NoticeDAO();
		if(netdao.UseridSearch(Userid)!=null){
			
			ArrayList<NoticeVO> notlist = (ArrayList<NoticeVO>)netdao.selectAllNotice();
//			System.out.println(notlist);
			request.setAttribute("notlist",notlist);
			request.getRequestDispatcher("/MeetingJSP/AllNotlist.jsp").forward(request, response);

		}else{
			PrintWriter out=response.getWriter(); 
			out.print("<script language='javascript'>alert('您未发布公告无法查看,请先发布');window.location.href='/Mywork1/MeetingJSP/AddNotice.jsp';</script>");
		
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
