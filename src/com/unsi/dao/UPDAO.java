package com.unsi.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.unsi.db.JDBCUtils;
import com.unsi.vo.PersonVO;
import com.unsi.vo.UPVO;
import com.unsi.vo.UserVO;

public class UPDAO {
	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	
	public UserVO selectUser(String user_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[User_Table] WHERE user_id=?  AND user_flag = 1";
		UserVO uvo= new UserVO();
		try {
			uvo = qr.query(sql, new BeanHandler<UserVO>(UserVO.class),user_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		return uvo;
	}
	
	public PersonVO selectPerson(String person_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Person_Table] WHERE person_id=?  AND person_flag = 1";
		PersonVO pvo= new PersonVO();
		try {
			pvo = qr.query(sql, new BeanHandler<PersonVO>(PersonVO.class),person_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		return pvo;
	}
	public List<UPVO> selectAllUP(Integer user_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[UP_Table] WHERE user_id=?  AND UP_display = 1";
		
		List<UPVO> uplist = new ArrayList<UPVO>();
		try {
			uplist = qr.query(sql, new BeanListHandler<UPVO>(UPVO.class),user_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		return uplist;
	}
	
	public UPVO selectUP(UPVO upvo){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[UP_Table] WHERE user_id=?  AND person_id = ? AND UP_display = 1";
		Object[] paream = {upvo.getUser_id(),upvo.getPerson_id()};
		try {
			upvo = qr.query(sql, new BeanHandler<UPVO>(UPVO.class),paream);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
//		System.out.println(upvo);
		return upvo;
	}
	public int addUP(UPVO upvo){
		String sql="INSERT INTO [EnterpriseOne].[dbo].[UP_Table] ([user_id],[person_id]) VALUES (?,?)";
		Object[] paream = {upvo.getUser_id(),upvo.getPerson_id()};
		int flag = 0;
		try {
			flag = qr.update(sql,paream);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		System.out.println(flag);
		return flag;
	}
	public int DeletUP(Integer UP_id){
		String sql = " UPDATE [EnterpriseOne].[dbo].[UP_Table]  SET  [UP_display] = ? WHERE  UP_id=? AND UP_display=?";
		Object[] parem = {0,UP_id,1};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("删除失败");
		}
		
		return flag;
	}
}
