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

public class UserNameSearchServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String userName=request.getParameter("Username");
			UserDAO udao = new UserDAO();
			List<UserVO> ulistUserVO = new ArrayList<UserVO>();
			ulistUserVO = udao.selectUserName(userName);
			
			JSONArray jsonArray = new JSONArray();
			if(ulistUserVO!=null&&(userName!=""&&userName!=null)){
				for(int i = 0;i<ulistUserVO.size();i++){
					JSONObject jsonObj = new JSONObject();
					UserVO user =  (UserVO)ulistUserVO.get(i);
					try {
						jsonObj.put("userId",user.getUser_id());
						jsonObj.put("userName",user.getUser_name());
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					jsonArray.put(jsonObj);
				}
				response.setCharacterEncoding("UTF-8");
				PrintWriter out = response.getWriter();
				String jsonArrayString = jsonArray.toString();
				out.write(jsonArrayString);
//				System.out.print(jsonArrayString);
			}
	}

}
