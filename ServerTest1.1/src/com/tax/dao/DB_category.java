package com.tax.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tax.comm.DBUtil;

public class DB_category {
	public DB_category() {}
	DBUtil db = new DBUtil();
	
	public void addCate() {
		PreparedStatement pstm1 = null;
		ResultSet rs = null;
		PreparedStatement pstm2 = null;
		String getIDSql = "select max(cateID) from category";
		String sql = "insert into category (cateID,consID,cateName) values (?,?,?)";
		try {
			pstm1 = db.getConPst(getIDSql);
			rs = pstm1.executeQuery();
			int ID = rs.getInt("cateID")+1;		//获取当前最大数值然后+1作为下一个分类表的ID
			
			
			
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(pstm1, null);
			DBUtil.close(pstm2, null);
		}
	}
	

}
