package kr.co.sist.inquiry;

import java.sql.Clob;
import java.sql.Date;


public class InquirydetailVO {
	
	private String inquirynum;
	private String memid;
	private String title;
	private Clob contents;
	private Date input_date;
	private String answer_contents;
	private Date answer_date;
	
	
	public InquirydetailVO(String inquirynum, String memid, String title, Clob contents, Date input_date,
			String answer_contents, Date answer_date) {
		super();
		this.inquirynum = inquirynum;
		this.memid = memid;
		this.title = title;
		this.contents = contents;
		this.input_date = input_date;
		this.answer_contents = answer_contents;
		this.answer_date = answer_date;
	}



	public String getInquirynum() {
		return inquirynum;
	}


	public void setInquirynum(String inquirynum) {
		this.inquirynum = inquirynum;
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


	public String getAnswer_contents() {
		return answer_contents;
	}


	public void setAnswer_contents(String answer_contents) {
		this.answer_contents = answer_contents;
	}


	public Date getAnswer_date() {
		return answer_date;
	}


	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}


	@Override
	public String toString() {
		return "InquirydetailVO [inquirynum=" + inquirynum + ", memid=" + memid + ", title=" + title + ", contents="
				+ contents + ", input_date=" + input_date + ", answer_contents=" + answer_contents + ", answer_date="
				+ answer_date + "]";
	}
	
	
	
	
}
