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

public class UserChangeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Integer Userid = (Integer)session.getAttribute("Userid");
		String Username = session.getAttribute("Username").toString();
		String oldUserpassword = request.getParameter("oldUserpassword");
		String newUserpassword = request.getParameter("newUserpassword");
		UserDAO udao = new UserDAO();
		UserVO uvo = new UserVO(Userid,Username,oldUserpassword);
//		PrintWriter out = response.getWriter();
		if(udao.selectUser(uvo)==null){
			request.getRequestDispatcher("/UserJSP/choose.jsp").forward(request, response);
			}else{
				uvo = udao.changeUser(new UserVO(Userid,Username,newUserpassword));
				session.setAttribute("Userpassword",uvo.getUser_password());
				response.sendRedirect("/Mywork1/UserJSP/UserView.jsp");
			} 
		}
	
}
