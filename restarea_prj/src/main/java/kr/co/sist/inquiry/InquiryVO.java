package kr.co.sist.inquiry;

import java.sql.Clob;
import java.sql.Date;


public class InquiryVO {
	
	private String inquirynum;
	private int cnt;
	private String memid;
	private String title;
	private Clob contents;
	private Date input_date;
	
	

	public InquiryVO(String inquirynum, int cnt, String memid, String title, Clob contents, Date input_date) {
		super();
		this.inquirynum = inquirynum;
		this.cnt = cnt;
		this.memid = memid;
		this.title = title;
		this.contents = contents;
		this.input_date = input_date;
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



	@Override
	public String toString() {
		return "InquiryVO [inquirynum=" + inquirynum + ", cnt=" + cnt + ", memid=" + memid + ", title=" + title
				+ ", contents=" + contents + ", input_date=" + input_date + "]";
	}


	
	
}
