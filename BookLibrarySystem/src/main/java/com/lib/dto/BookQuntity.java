package com.lib.dto;

import java.io.Serializable;

public class BookQuntity implements Serializable{
	int bid ;
	String bname;
	String subject;
	
	public BookQuntity(int bid, String bname, String subject) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.subject = subject;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
}
