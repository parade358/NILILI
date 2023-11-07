package com.nilili.subscribe.vo;

import java.sql.Date;

public class Subscribe {
	private int subNo;
	private int memberNo;
	private int tasteFirst;
	private int tasteSecond;
	private int tasteThird;
	private String desctription;
	private Date regiDate;
	private Date modiDate;
	private String userYn;
	
	
	
	
	
	public Subscribe() {
		super();
	}


	public Subscribe(int subNo, int memberNo, int tasteFirst, int tasteSecond, int tasteThird, String desctription,
			Date regiDate, Date modiDate, String userYn) {
		super();
		this.subNo = subNo;
		this.memberNo = memberNo;
		this.tasteFirst = tasteFirst;
		this.tasteSecond = tasteSecond;
		this.tasteThird = tasteThird;
		this.desctription = desctription;
		this.regiDate = regiDate;
		this.modiDate = modiDate;
		this.userYn = userYn;
	}


	public int getSubNo() {
		return subNo;
	}


	public void setSubNo(int subNo) {
		this.subNo = subNo;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public int getTasteFirst() {
		return tasteFirst;
	}


	public void setTasteFirst(int tasteFirst) {
		this.tasteFirst = tasteFirst;
	}


	public int getTasteSecond() {
		return tasteSecond;
	}


	public void setTasteSecond(int tasteSecond) {
		this.tasteSecond = tasteSecond;
	}


	public int getTasteThird() {
		return tasteThird;
	}


	public void setTasteThird(int tasteThird) {
		this.tasteThird = tasteThird;
	}


	public String getDesctription() {
		return desctription;
	}


	public void setDesctription(String desctription) {
		this.desctription = desctription;
	}


	public Date getRegiDate() {
		return regiDate;
	}


	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}


	public Date getModiDate() {
		return modiDate;
	}


	public void setModiDate(Date modiDate) {
		this.modiDate = modiDate;
	}


	public String getUserYn() {
		return userYn;
	}


	public void setUserYn(String userYn) {
		this.userYn = userYn;
	}

	
	
	
	

}
