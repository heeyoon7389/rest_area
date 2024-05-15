package restarea.faq;


public class FaqVO {

	private String faqnum;
	private String q;
	private String a;
	
	public FaqVO(String faqnum, String q, String a) {
		super();
		this.faqnum = faqnum;
		this.q = q;
		this.a = a;
	}

	public String getFaqnum() {
		return faqnum;
	}

	public void setFaqnum(String faqnum) {
		this.faqnum = faqnum;
	}

	public String getQ() {
		return q;
	}

	public void setQ(String q) {
		this.q = q;
	}

	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	@Override
	public String toString() {
		return "FaqVO [faqnum=" + faqnum + ", q=" + q + ", a=" + a + "]";
	}
	
	
	
}//class
