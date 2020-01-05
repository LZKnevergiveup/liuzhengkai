package com.unsi.servlet_user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.unsi.dao.UserDAO;
import com.unsi.vo.UserVO;

public class UseridSearchServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String userId=request.getParameter("userId");
		
		UserDAO udao = new UserDAO();
		UserVO uvo = new UserVO();
		uvo = udao.UseridSearch(userId);
		
		JSONObject jsonObj = new JSONObject();
		if(uvo!=null&&(userId!=""&&userId!=null)){	
				try {
					jsonObj.put("userId",uvo.getUser_id());
					jsonObj.put("userName",uvo.getUser_name());
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			
			
			out.write(jsonObj.toString());
			
	}

}
