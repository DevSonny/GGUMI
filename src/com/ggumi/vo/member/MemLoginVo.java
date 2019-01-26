package com.ggumi.vo.member;

public class MemLoginVo {

	private int mem_login_no; 	// 로그인번호
	private int mem_no; 		// 회원번호
	private String login_time; 	// 로그인시간
	private String logout_time; // 로그아웃시간

	
	public MemLoginVo() {
		super();
	}

	public MemLoginVo(int mem_login_no, int mem_no, String login_time, String logout_time) {
		super();
		this.mem_login_no = mem_login_no;
		this.mem_no = mem_no;
		this.login_time = login_time;
		this.logout_time = logout_time;
	}
	
	

	public int getMem_login_no() {
		return mem_login_no;
	}

	public void setMem_login_no(int mem_login_no) {
		this.mem_login_no = mem_login_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getLogin_time() {
		return login_time;
	}

	public void setLogin_time(String login_time) {
		this.login_time = login_time;
	}

	public String getLogout_time() {
		return logout_time;
	}

	public void setLogout_time(String logout_time) {
		this.logout_time = logout_time;
	}

	@Override
	public String toString() {
		return "MemLoginVo [mem_login_no=" + mem_login_no + ", mem_no=" + mem_no + ", login_time=" + login_time
				+ ", logout_time=" + logout_time + "]";
	}

}
