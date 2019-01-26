package com.ggumi.vo.admin;

public class AdminLogin {

	private int admin_login_no;
	private int admin_no;
	private String login_time;
	private String logout_time;

	public AdminLogin() {
		super();
	}

	public AdminLogin(int admin_login_no, int admin_no, String login_time, String logout_time) {
		super();
		this.admin_login_no = admin_login_no;
		this.admin_no = admin_no;
		this.login_time = login_time;
		this.logout_time = logout_time;
	}

	public int getAdmin_login_no() {
		return admin_login_no;
	}

	public void setAdmin_login_no(int admin_login_no) {
		this.admin_login_no = admin_login_no;
	}

	public int getAdmin_no() {
		return admin_no;
	}

	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
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
		return "AdminLogin [admin_login_no=" + admin_login_no + ", admin_no=" + admin_no + ", login_time=" + login_time
				+ ", logout_time=" + logout_time + "]";
	}

}
