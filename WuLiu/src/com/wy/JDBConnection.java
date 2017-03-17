package com.wy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBConnection {
	private static Connection conn = null; 
	private static Statement st = null; 
	private ResultSet rs = null; 

	private String dbUrl1 = "jdbc:mysql://127.0.0.1:3306/db_wuliu?characterEncoding=UTF-8";
	private String dbUserName1 = "root";
	private String dbPassword1 = "1111";
	private String jdbcName1 = "com.mysql.jdbc.Driver";

	public Connection getCon() throws Exception {
		Class.forName(jdbcName1);
		Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_wuliu?characterEncoding=UTF-8", "root",
				"root");
		return con;
	}

	public void close(Connection con) throws Exception {
		if (con != null) {
			con.close();
		}
	}

	public ResultSet executeQuery(String sql) throws Exception {
		conn = this.getCon();
		try {
			st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			rs = st.executeQuery(sql); 

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Query Exception");
		} 
		return rs; 
	}

	public boolean executeUpdata(String sql) {
		try {
			st = conn.createStatement(); 
			st.executeUpdate(sql); 
			return true; 
		} catch (Exception e) {
			e.printStackTrace();
			return false; 
		}
	}

}
