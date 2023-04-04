package com.lib.dto;

public class Student {
	private int lid;
	private String lname;
	private int sage;
	private String semail;
		
	public Student() {
		super();
	}
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
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
		return "Librarian [lid=" + lid + ", lname=" + lname + ", sage=" + sage + ", semail=" + semail + "]";
	}
	public Student(int lid, String lname, int sage, String semail) {
		super();
		this.lid = lid;
		this.lname = lname;
		this.sage = sage;
		this.semail = semail;
	}
	

}
