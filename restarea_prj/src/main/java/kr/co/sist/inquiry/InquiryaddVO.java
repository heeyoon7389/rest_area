package kr.co.sist.inquiry;

import java.sql.Clob;
import java.sql.Date;


public class InquiryaddVO {
	
	private String inquirynum;
	private int cnt;
	private String memid;
	private String title;
	private Clob contents;
	private Date input_date;
	private char secret_flag;
	
	
	public InquiryaddVO(String inquirynum, int cnt, String memid, String title, Clob contents, Date input_date,
			char secret_flag) {
		super();
		this.inquirynum = inquirynum;
		this.cnt = cnt;
		this.memid = memid;
		this.title = title;
		this.contents = contents;
		this.input_date = input_date;
		this.secret_flag = secret_flag;
	}

	public String getInquirynum() {
		return inquirynum;
	}

	public void setInquirynum(String inquirynum) {
		this.inquirynum = inquirynum;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Clob getContents() {
		return contents;
	}

	public void setContents(Clob contents) {
		this.contents = contents;
	}

	public Date getInput_date() {
		return input_date;
	}

	public void setInput_date(Date input_date) {
		this.input_date = input_date;
	}

	public char getSecret_flag() {
		return secret_flag;
	}

	public void setSecret_flag(char secret_flag) {
		this.secret_flag = secret_flag;
	}

	@Override
	public String toString() {
		return "InquiryaddVO [inquirynum=" + inquirynum + ", cnt=" + cnt + ", memid=" + memid + ", title=" + title
				+ ", contents=" + contents + ", input_date=" + input_date + ", secret_flag=" + secret_flag + "]";
	}
	
	

	
}
