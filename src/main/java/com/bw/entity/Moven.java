package com.bw.entity;


public class Moven implements java.io.Serializable {

	//columns START
	private Integer mid;
	private String mname;
	private String mas;
	private String dao;
	private String sdate;
	
	private String tname;
	private String tid;
	
	
	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	//columns END
	public Moven(){


		this.mid=mid;

	public void setMid(Integer mid){
		this.mid=mid;
	}
	public Integer getMid(){
		return mid;
	}

	public void setMname(String mname){
		this.mname=mname;
	}
	public String getMname(){
		return mname;
	}

	public void setMas(String mas){
		this.mas=mas;
	}
	public String getMas(){
		return mas;
	}

	public void setDao(String dao){
		this.dao=dao;
	}
	public String getDao(){
		return dao;
	}

	public void setSdate(String sdate){
		this.sdate=sdate;
	}
	public String getSdate(){
		return sdate;
	}

	@Override
	public String toString() {
		return "Moven [mid=" + mid + ", mname=" + mname + ", mas=" + mas + ", dao=" + dao + ", sdate=" + sdate
				+ ", tname=" + tname + ", tid=" + tid + "]";
	}
	
	
}
