package com.tax.dao;
import java.sql.*;

import com.tax.comm.DBUtil;
import com.tax.vo.*;
public class DB_user {
	public DB_user() {}
	
	DBUtil db = new DBUtil();
	
	
	/**
	 * @param addUser is used to add a new user in the system
	 */
	public void addUser(user use) {
		
		PreparedStatement pstm = null;
		String sql = "insert into user(userID,psword,phone,email) values (?,?,?,?)";
		try {
			pstm = db.getConPst(sql);
			//璁剧疆鍙傛暟
			pstm.setString(1, use.getUserID());
			pstm.setString(2, use.getPsw());
			pstm.setString(3, use.getPhone());
			pstm.setString(4, use.getEmail());
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm, null);
		}
	}
	
	public void update(user use) {
		//user update its password,phone or email address
		PreparedStatement pstm = null;
		String sql = "update user set psword = ?,phone = ?,email = ? where userID = ?";
		try {
			pstm = db.getConPst(sql);
			//璁剧疆鍙傛暟
			pstm.setString(4, use.getUserID());
			pstm.setString(1, use.getPsw());
			pstm.setString(2, use.getPhone());
			pstm.setString(3, use.getEmail());
			
			pstm.executeQuery();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm, null);
		}
	}
		
	public user get(String userID) {
		user use = new user();
		ResultSet rs = null;
		PreparedStatement pstm = null;
		try {
			String sql = "select * from user where userID = ' "+ userID;
			pstm = db.getConPst(sql);
			//rs淇濆瓨缁撴灉闆�
			rs = pstm.executeQuery();
			while(rs.next()) {
				use.setUserID(rs.getString("userID"));
				use.setPsw(rs.getString("psword"));
				use.setPhone(rs.getString("phone"));
				use.setEmail(rs.getString("email"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.close(pstm,null);
		}
		return use;
	}
	
	/**
	 * 鐧婚檰楠岃瘉锛岄獙璇佺敤鎴锋槸鍚﹀彲浠ユ垚鍔熺櫥闄�
	 * @return boolean 
	 */
	public boolean loginVerify(String userID,String psw) {
		user use = new user();
		boolean isValid = false;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		//trim 鍑芥暟鍘绘帀ID鍜宲sw鍓嶅悗绔殑绌烘牸
		try {
			String sql = "select * from user where userID = ? and psword = ?";
			pstm = db.getConPst(sql);
			pstm.setString(1, userID);
			pstm.setString(2, psw);
			rs = pstm.executeQuery();
			if(rs.next()) {
				isValid = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null)
					rs.close();
				if(pstm != null)
					pstm.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return isValid;
	}
	
}
