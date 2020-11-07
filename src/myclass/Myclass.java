package myclass;

import java.sql.Timestamp;

public class Myclass {
   private int num ;
   private String id ;
   private String class_id ;
   private String like_yn ; 
   private Timestamp reg_date;
   private String entry_yn; 
   private String link;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getClass_id() {
		return class_id;
	}
	public void setClass_id(String class_id) {
		this.class_id = class_id;
	}
	public String getLike_yn() {
		return like_yn;
	}
	public void setLike_yn(String like_yn) {
		this.like_yn = like_yn;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getEntry_yn() {
		return entry_yn;
	}
	public void setEntry_yn(String entry_yn) {
		this.entry_yn = entry_yn;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}

}
