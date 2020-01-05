package com.unsi.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.unsi.db.JDBCUtils;
import com.unsi.vo.PersonVO;
import com.unsi.vo.UserVO;

public class PersonDAO {
QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource()); 
	
	public List<PersonVO> selectAllPerson(){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Person_Table] WHERE   person_display = ?";
		List<PersonVO> personlist= new ArrayList<PersonVO>();
		try {
			personlist = qr.query(sql, new BeanListHandler<PersonVO>(PersonVO.class),1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
//		System.out.println(personlist);
		return personlist;
	}
	
	public int addPerson(PersonVO per){
		String sql=" INSERT INTO [EnterpriseOne].[dbo].[Person_Table] "+
				" ([person_name],[person_sex],[person_phone],[person_mail],[person_qq],[person_work],[person_address],[person_Postal]) "+
				" VALUES (?,?,?,?,?,?,?,?)";
		Object[] parem = {per.getPerson_name(),per.getPerson_sex(),per.getPerson_phone(),per.getPerson_mail(),per.getPerson_qq(),per.getPerson_work(),per.getPerson_address(),per.getPerson_Postal()};
		int flag = 0;
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	
	public PersonVO PersonidSearch(Integer person_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Person_Table] WHERE person_id = ?  AND person_display = 1";
		PersonVO pervo= new PersonVO();
		try {
			pervo = qr.query(sql, new BeanHandler<PersonVO>(PersonVO.class),person_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}	
		return pervo;
	}
	
	
	public int UpdatePerson(PersonVO pvo){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Person_Table] "+
   " SET [person_name] = ? , [person_sex] = ?, [person_phone] =?, [person_mail] =?, [person_qq] =?, [person_work] =?, [person_address] =?, [person_Postal] =?, [person_display] = ?"+
   " WHERE  person_id=?";
		Object[] parem = {pvo.getPerson_name(),pvo.getPerson_sex(),pvo.getPerson_phone(),pvo.getPerson_mail(),pvo.getPerson_qq(),pvo.getPerson_work(),pvo.getPerson_address(),pvo.getPerson_Postal(),1,pvo.getPerson_id()};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("修改失败");
		}
		
		return flag;
	}
	
	public int DeletPerson(PersonVO pvo){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Person_Table]  SET  [person_display] = ? WHERE  person_id=? AND person_display=?";
		Object[] parem = {0,pvo.getPerson_id(),1};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("删除失败");
		}
		
		return flag;
	}
}
