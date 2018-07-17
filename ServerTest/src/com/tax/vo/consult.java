package com.tax.vo;

import java.util.*;

public class consult {
	private String consID;
	private String consName;
	private String consDetail;
	private int seenNum;
	private int ansNum;
	private int keptNum;
	private Date date;
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getKeptNum() {
		return keptNum;
	}

	public void setKeptNum(int keptNum) {
		this.keptNum = keptNum;
	}

	public int getAnsNum() {
		return ansNum;
	}

	public void setAnsNum(int ansNum) {
		this.ansNum = ansNum;
	}

	public int getSeenNum() {
		return seenNum;
	}

	public void setSeenNum(int seenNum) {
		this.seenNum = seenNum;
	}

	public String getConsDetail() {
		return consDetail;
	}

	public void setConsDetail(String consDetail) {
		this.consDetail = consDetail;
	}

	public String getConsName() {
		return consName;
	}

	public void setConsName(String consName) {
		this.consName = consName;
	}

	public String getConsID() {
		return consID;
	}

	public void setConsID(String consID) {
		this.consID = consID;
	}
	
}
