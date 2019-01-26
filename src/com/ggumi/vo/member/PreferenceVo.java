package com.ggumi.vo.member;

public class PreferenceVo {

	private int mem_no; 		// 회원번호
	private String pre_job; 	// 관심업종
	private String pre_area; 	// 관심지역
	private String pre_category;// 관심분야

	public PreferenceVo() {
		super();
	}

	public PreferenceVo(int mem_no, String pre_job, String pre_area, String pre_category) {
		super();
		this.mem_no = mem_no;
		this.pre_job = pre_job;
		this.pre_area = pre_area;
		this.pre_category = pre_category;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getPre_job() {
		return pre_job;
	}

	public void setPre_job(String pre_job) {
		this.pre_job = pre_job;
	}

	public String getPre_area() {
		return pre_area;
	}

	public void setPre_area(String pre_area) {
		this.pre_area = pre_area;
	}

	public String getPre_category() {
		return pre_category;
	}

	public void setPre_category(String pre_category) {
		this.pre_category = pre_category;
	}

	@Override
	public String toString() {
		return "Preference [mem_no=" + mem_no + ", pre_job=" + pre_job + ", pre_area=" + pre_area + ", pre_category="
				+ pre_category + "]";
	}

}
