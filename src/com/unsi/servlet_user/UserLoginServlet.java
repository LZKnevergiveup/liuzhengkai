package com.unsi.servlet_user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.unsi.dao.UserDAO;
import com.unsi.vo.UserVO;

public class UserLoginServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter  out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String Username =  request.getParameter("Username");
		String Userpassword = request.getParameter("Userpassword");
		UserVO uvo = new UserVO(Username,Userpassword);
		UserDAO udao = new UserDAO();
		UserVO uv = new UserVO(); 
		uv = udao.selectUser(uvo);
//		System.out.println(uv);
		if(uv!=null&&uv.getUser_id()!=null){
			HttpSession session = request.getSession();
			session.setAttribute("Userid",uv.getUser_id());
			session.setAttribute("Username",uv.getUser_name());
			session.setAttribute("Userpassword",uv.getUser_password());
			session.setAttribute("Userflag",uv.getUser_flag());
			request.getRequestDispatcher("/index.jsp").forward(request,response);
		}else{
//			System.out.println(123);
			out.println("<script>window.history.go(-1)</script>");
		}
	}

}
