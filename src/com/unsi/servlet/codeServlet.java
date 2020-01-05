package com.unsi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

public class codeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String code = (String) session.getAttribute("checkcode_session");
		JSONObject jsonObj = new JSONObject();
		String codeshu = request.getParameter("login_code");
//		System.out.println(codeshu);
		boolean a = false;
		a = code.equals(codeshu);
		try {
			jsonObj.put("codeboolean",a);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();	
//		System.out.println(jsonObj.toString());
		
		out.write(jsonObj.toString());
	}

}
