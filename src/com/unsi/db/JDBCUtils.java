package com.unsi.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.commons.dbcp.BasicDataSource;

public class JDBCUtils {
	private static Connection con;
	private static final String DIRVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static final String URL="jdbc:sqlserver://localhost:1433;DatabaseName=EnterpriseOne";
	public static final String USER="sa";
	public static final String PASSWORD="123456";
	
	static {
		try {
			Class.forName(DIRVER);
		}catch(ClassNotFoundException e) {
			throw new RuntimeException(e+"��ݿ�����ʧ��");
		}
	}
	public static BasicDataSource getDataSource(){
		BasicDataSource datasource = new BasicDataSource();
		datasource.setDriverClassName(DIRVER);
		datasource.setUrl(URL);
		datasource.setUsername(USER);
		datasource.setPassword(PASSWORD);
		datasource.setMaxActive(10);
		datasource.setMaxIdle(5);
		datasource.setMinIdle(2);
		datasource.setInitialSize(10);
		return datasource;
	}
}