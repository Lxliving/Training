package com.tax.test;

import java.sql.Date;
import java.util.Stack;

import com.tax.controller.listShare;
import com.tax.dao.DB_share;
import com.tax.dao.DB_user;
import com.tax.vo.share;

public class run {
	public static void main(String args[]) {
		DB_user du = new DB_user();
		du.loginVerify("user1", "1234");
	}
}
