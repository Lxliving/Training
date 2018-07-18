package com.tax.test;

import java.sql.Date;
import java.util.Stack;

import com.tax.controller.listShare;
import com.tax.dao.DB_share;
import com.tax.vo.share;

public class run {
	public static void main(String args[]) {
		DB_share ds = new DB_share();
		share s = new share();
		s.setShareID("222");
		s.setShareName("分享测试");
		Date  d = new Date(2018, 3, 20);
		int seenNum = 10;
		int keptNum = 11;
		s.setKeptNum(keptNum);
		s.setSeenNum(seenNum);
		s.setDate(d);
		ds.addShare(s);

		
		
	}
}
