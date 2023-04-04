package com.lib.dto;

public class Validate_LibrarianLogin {
	
	private String ausername;
	private String apassword;
	
	
	public String getAusername() {
		return ausername;
	}
	public void setAusername(String ausername) {
		this.ausername = ausername;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	public String toString() {
		return "Validate_AdminLogin [ ausername=" + ausername + ", apassword=" + apassword + "]";
	}
	

}
