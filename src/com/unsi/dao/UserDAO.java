package com.unsi.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.unsi.db.JDBCUtils;
import com.unsi.vo.UserVO;

public class UserDAO {
	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource()); 
	
	public List<UserVO> selectUserName(String UserName){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[User_Table] WHERE user_name != ?  AND user_flag = 1";
		List<UserVO> ulistUserVO= new ArrayList<UserVO>();
		try {
			ulistUserVO = qr.query(sql, new BeanListHandler<UserVO>(UserVO.class),UserName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}

		return ulistUserVO;
	}
	public UserVO UseridSearch(String userId){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[User_Table] WHERE user_id = ?  AND user_flag = 1";
		UserVO uvo= new UserVO();
		try {
			uvo = qr.query(sql, new BeanHandler<UserVO>(UserVO.class),userId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		
		return uvo;
	}
	public List<UserVO> selectLikeUserName(String UserName){
//		System.out.println(UserName);
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[User_Table] WHERE user_name Like '%"+UserName+"%' AND user_flag = 1";
		List<UserVO> ulistUserVO= new ArrayList<UserVO>();
		try {
			ulistUserVO = qr.query(sql, new BeanListHandler<UserVO>(UserVO.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
//		System.out.println(ulistUserVO);
		return ulistUserVO;
	}
	
	public UserVO addUser(UserVO uvo){
		String sql="INSERT INTO [EnterpriseOne].[dbo].[User_Table]  ([user_name], [user_password])  VALUES (?,?)";
		Object[] parem = {uvo.getUser_name(),uvo.getUser_password()};
		int flag = 0;
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		UserDAO udao = new UserDAO();
		return udao.selectUser(uvo);
	}
	public UserVO selectUser(UserVO uv){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[User_Table] WHERE user_name = ? AND user_password= ?  AND user_flag = ?";
		Object[] parem = {uv.getUser_name(),uv.getUser_password(),1};
		UserVO uvo = null;
		try {
			uvo = qr.query(sql,new BeanHandler<UserVO>(UserVO.class), parem);
		} catch (SQLException e) {
			System.out.println("没找到");
		}
		return uvo;
	}
	
	public UserVO changeUser(UserVO uv){
		String sql = " UPDATE [EnterpriseOne].[dbo].[User_Table] SET [user_password] = ?  WHERE user_id = ? AND user_flag = ? ";
		Object[] parem = {uv.getUser_password(),uv.getUser_id(),1};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("修改失败");
		}
		UserDAO udao = new UserDAO();
		return udao.selectUser(uv);
	}
}
