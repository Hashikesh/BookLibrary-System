package com.lib.dto;

public class Librarian {
	private int aid;
	private String aname;
	private int sage;
	private String semail;
	public int getAid() {
		return aid;
	}
	public void setAid(int lid) {
		this.aid = lid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String lname) {
		this.aname = lname;
	}
	public int getSage() {
		return sage;
	}
	public void setSage(int sage) {
		this.sage = sage;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", sage=" + sage + ", semail=" + semail + "]";
	}
	public Librarian(int aid, String aname, int sage, String semail) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.sage = sage;
		this.semail = semail;
	}
	

}
