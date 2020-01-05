package com.unsi.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.unsi.db.JDBCUtils;
import com.unsi.vo.LogVO;
import com.unsi.vo.PersonVO;
import com.unsi.vo.ScheduleVO;

public class LogDAO {
	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	public int addLog(LogVO log){
		String sql=" INSERT INTO [EnterpriseOne].[dbo].[Log_Table] "+
				" ( [user_id],[log_date],[log_title],[log_content],[log_time]) "+
				" VALUES (?,?,?,?,?)";
		Object[] parem = {log.getUser_id(),log.getLog_date(),log.getLog_title(),log.getLog_content(),log.getLog_time()};
		int flag = 0;
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	public List<LogVO> selectAllLog(String Userid){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Log_Table] WHERE   log_display = 1 AND user_id = ?";
		List<LogVO> loglist= new ArrayList<LogVO>();
		try {
			loglist = qr.query(sql, new BeanListHandler<LogVO>(LogVO.class),Userid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
//		System.out.println(schedlist);
		return loglist;
	}
	
	public LogVO idLogSearch(String  log_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Log_Table] WHERE log_id = ?  AND  log_display = 1";
		LogVO log= new LogVO();
		try {
			log = qr.query(sql, new BeanHandler<LogVO>(LogVO.class),log_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		
		return log;
	}
	
	public int UpdateLog(LogVO logvo){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Log_Table] "+
   " SET  [log_date] =?, [log_title] =?, [log_content] =?, [log_time] =?"+
   " WHERE  log_id=?";
		Object[] parem = {logvo.getLog_date(),logvo.getLog_title(),logvo.getLog_content(),logvo.getLog_time(),logvo.getLog_id()};
		int flag = 0;
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("修改失败");
		}
		
		return flag;
	}
	
	public int DeletLog(LogVO logvo){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Log_Table]  SET  [Log_display] = ? WHERE  log_id=? AND log_display=?";
		Object[] parem = {0,logvo.getLog_id(),1};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("删除失败");
		}
		
		return flag;
	}
}
