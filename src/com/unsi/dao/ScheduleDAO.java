package com.unsi.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.unsi.db.JDBCUtils;
import com.unsi.vo.PersonVO;
import com.unsi.vo.ScheduleVO;
import com.unsi.vo.UserVO;

public class ScheduleDAO {
	
	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	public int addSchedule(ScheduleVO shd){
		String sql=" INSERT INTO [EnterpriseOne].[dbo].[schedule_Table] "+
				" ( [user_id], [schedule_content], [schedule_date]) "+
				" VALUES (?,?,?)";
		Object[] parem = {shd.getUser_id(),shd.getSchedule_content(),shd.getSchedule_date()};
		int flag = 0;
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	public List<ScheduleVO> selectAllSchedule(String Userid){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Schedule_Table] WHERE   schedule_display = 1 AND user_id = ?";
		List<ScheduleVO> schedlist= new ArrayList<ScheduleVO>();
		try {
			schedlist = qr.query(sql, new BeanListHandler<ScheduleVO>(ScheduleVO.class),Userid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
//		System.out.println(schedlist);
		return schedlist;
	}
	
	public ScheduleVO idUserSearch(String  schedule_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Schedule_Table] WHERE schedule_id = ?  AND  schedule_display = 1";
		ScheduleVO sched= new ScheduleVO();
		try {
			sched = qr.query(sql, new BeanHandler<ScheduleVO>(ScheduleVO.class),schedule_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		
		return sched;
	}
	
	public int UpdateSchedule(ScheduleVO schedu){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Schedule_Table] "+
   " SET [schedule_content] = ? , [schedule_date] = ? "+
   " WHERE  schedule_id=?";
		Object[] parem = {schedu.getSchedule_content(),schedu.getSchedule_date(),schedu.getSchedule_id()};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("修改失败");
		}
		
		return flag;
	}
	
	public int DeletSchedule(ScheduleVO schedu){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Schedule_Table] "+
   " SET [schedule_display] = ?   WHERE  schedule_id=?";
		Object[] parem = {0,schedu.getSchedule_id()};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("删除失败");
		}
		
		return flag;
	}
}
