package com.ggumi.vo.member;

public class RealtorVo {

	private int mem_no; 			// 회원번호
	private String realtor_no; 		// 공인중개사번호
	private String realtor_name; 	// 소속중개사명

	
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getRealtor_no() {
		return realtor_no;
	}
	public void setRealtor_no(String realtor_no) {
		this.realtor_no = realtor_no;
	}
	public String getRealtor_name() {
		return realtor_name;
	}
	public void setRealtor_name(String realtor_name) {
		this.realtor_name = realtor_name;
	}
	public RealtorVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RealtorVo(int mem_no, String realtor_no, String realtor_name) {
		super();
		this.mem_no = mem_no;
		this.realtor_no = realtor_no;
		this.realtor_name = realtor_name;
	}
	@Override
	public String toString() {
		return "RealtorVo [mem_no=" + mem_no + ", realtor_no=" + realtor_no + ", realtor_name=" + realtor_name + "]";
	}
	
	
	
	
	
}
