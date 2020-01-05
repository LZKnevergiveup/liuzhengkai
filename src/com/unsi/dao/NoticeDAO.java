package com.unsi.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.unsi.db.JDBCUtils;
import com.unsi.vo.NoticeVO;
import com.unsi.vo.ScheduleVO;

public class NoticeDAO {
	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	public int addNotice(NoticeVO noti){
		String sql=" INSERT INTO [EnterpriseOne].[dbo].[Notice_Table] "+
				" ( [user_id],[notice_title],[notice_content], [notice_time]) "+
				" VALUES (?,?,?,?)";
		Object[] parem = {noti.getUser_id(),noti.getNotice_title(),noti.getNotice_content(),noti.getNotice_time()};
		int flag = 0;
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	public NoticeVO UseridSearch(String  user_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Notice_Table] WHERE user_id = ?  AND  notice_display = 1";
		NoticeVO noticvo= new NoticeVO();
		try {
			noticvo = qr.query(sql, new BeanHandler<NoticeVO>(NoticeVO.class),user_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		
		return noticvo;
	}
	public List<NoticeVO> selectAllNotice(){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Notice_Table] WHERE   notice_display = 1 ";
		List<NoticeVO> notlist= new ArrayList<NoticeVO>();
		try {
			notlist = qr.query(sql, new BeanListHandler<NoticeVO>(NoticeVO.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
//		System.out.println(notlist);
		return notlist;
	}
	public NoticeVO idNoticeSearch(Integer  notice_id){
		String sql="SELECT * FROM [EnterpriseOne].[dbo].[Notice_Table] WHERE  notice_id = ?  AND   notice_display = 1";
		 NoticeVO notvo= new NoticeVO();
		try {
			notvo = qr.query(sql, new BeanHandler<NoticeVO>(NoticeVO.class),notice_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		}
		
		return notvo;
	}
	
	public int updateNotice(NoticeVO notvo){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Notice_Table] "+
   " SET [user_id] = ? , [notice_title] = ? , [notice_content] = ? , [notice_time] = ? "+
   " WHERE  notice_id= ? ";
		Object[] parem = {notvo.getUser_id(),notvo.getNotice_title(),notvo.getNotice_content(),notvo.getNotice_time(),notvo.getNotice_id()};
		int flag = 0;	
			try {
				flag = qr.update(sql, parem);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("修改失败");
			}	
//		System.out.println(sql);
		return flag;
	}
	
	public int DeletNotice(NoticeVO notvo){
		String sql = " UPDATE [EnterpriseOne].[dbo].[Notice_Table] "+
   " SET [notice_display] = ?   WHERE  notice_id=?";
		Object[] parem = {0,notvo.getNotice_id()};
		int flag = 0;
		
		try {
			flag = qr.update(sql, parem);
		} catch (SQLException e) {
			System.out.println("删除失败");
		}
		
		return flag;
	}
	
}
