package com.tax.test;

import java.util.Stack;

import com.tax.controller.listShare;
import com.tax.dao.DB_share;
import com.tax.vo.share;

public class run {
	public static void main(String args[]) {
		DB_share ds = new DB_share();
		Stack<share> sta = ds.Query();
		while(!sta.isEmpty()) {
			System.out.println(sta.pop().getShareName());
		}
		
	}
}
