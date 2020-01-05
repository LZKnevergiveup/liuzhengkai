package com.unsi.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.unsi.db.JDBCUtils;
import com.unsi.vo.NewsVO;

public class NewsDAO {
	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	
	public int AddNews(NewsVO newsvo){
		String sql="INSERT INTO [EnterpriseOne].[dbo].[News_Table] "+
           " ([user_id],[person_id],[news_content],[news_time]) "+
           " VALUES (?,?,?,?)";
		Object[] paerm = {newsvo.getUser_id(),newsvo.getPerson_id(),newsvo.getNews_content(),newsvo.getNews_time()};
		int flag = 0;
		try {
			flag = qr.update(sql, paerm);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return flag;
	}
	
	public List<NewsVO> seletAllNews(Integer userid){
		String sql = "SELECT * FROM [EnterpriseOne].[dbo].[News_Table] WHERE user_id = ? ";
		List<NewsVO> newslist = new ArrayList<NewsVO>();
		Object paream[] = {userid};
		try {
			newslist = qr.query(sql, new BeanListHandler<NewsVO>(NewsVO.class),paream);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newslist;
	}
	
	public int readNews(Integer Newsid){
		String sql = " UPDATE [EnterpriseOne].[dbo].[News_Table] SET [news_read] = ? WHERE news_id = ?";
		int flag=0;
		Object paream[] = {0,Newsid};
		try {
			flag = qr.update(sql, paream);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
}
