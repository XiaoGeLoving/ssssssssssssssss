package com.lyq;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 查询图书信息的Servlet对象
 *
 */
@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://127.0.0.1:3306/db_wuliu";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "1111";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 获取Statement
			Statement stmt = conn.createStatement();
			// 添加图书信息的SQL语句
			String sql = "select * from tb_goodsmeg";
			// 执行查询
			ResultSet rs = stmt.executeQuery(sql);
			// 实例化List对象
			List<goodsmeg> list = new ArrayList<goodsmeg>();
			// 判断光标向后移动，并判断是否有效
			while(rs.next()){
				// 实例化Book对象
				goodsmeg goodsmeg = new goodsmeg();
				// 对id属性赋值
				goodsmeg.setID(rs.getInt("ID"));
				// 对name属性赋值
				goodsmeg.setGoodsStyle(rs.getString("GoodsStyle"));
				// 对price属性赋值
				goodsmeg.setGoodsName(rs.getString("GoodsName"));
				// 对bookCount属性赋值
				goodsmeg.setGoodsNumber(rs.getString("setGoodsNumber"));
				// 对author属性赋值
				goodsmeg.setStartProvince(rs.getString("StartProvince"));
				goodsmeg.setStartCity(rs.getString("StartCity"));
				goodsmeg.setEndProvince(rs.getString("EndProvince"));
				goodsmeg.setEndCity(rs.getString("EndCity"));
				//goodsmeg.setStyle(rs.getString("Style"));
				//goodsmeg.setTransportTime(rs.getString("TransportTime"));
				//goodsmeg.setPhone(rs.getString("Phone"));
				//goodsmeg.setLink(rs.getString("Link"));
				//goodsmeg.setIssueDate(rs.getString(IssueDate"))
				///goodsmeg.setRemark(rs.getString("Remark"));
				//goodsmeg.setRequest(rs.getString("Request"));
				//goodsmeg.setUserName(rs.getString("UserName"));
				
				// 将图书对象添加到集合中
				list.add(goodsmeg);
			}
			// 将图书集合放置到request之中
			request.setAttribute("list", list);
			rs.close();		// 关闭ResultSet
			stmt.close();	// 关闭Statement
			conn.close();	// 关闭Connection
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 请求转发到book_list.jsp
		request.getRequestDispatcher("book_list.jsp").forward(request, response);
	}
}




















