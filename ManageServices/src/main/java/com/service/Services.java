package com.service;

public class Services {
	private int sid;
	private String sName;
	private String scharge;
	private String sDes;
	
	public Services(String sName, String scharge, String sDes) {
		this.sName = sName;
		this.scharge = scharge;
		this.sDes = sDes;
	}

	public Services(int sid, String sName, String scharge, String sDes) {
		this.sid = sid;
		this.sName = sName;
		this.scharge = scharge;
		this.sDes = sDes;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getScharge() {
		return scharge;
	}

	public void setScharge(String scharge) {
		this.scharge = scharge;
	}

	public String getsDes() {
		return sDes;
	}

	public void setsDes(String sDes) {
		this.sDes = sDes;
	}
	

}
