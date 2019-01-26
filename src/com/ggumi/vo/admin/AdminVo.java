package com.ggumi.vo.admin;

public class AdminVo {

	private int admin_no;
	private String admin_id;
	private String admin_pw;
	private String admin_name;
	private String admin_regi_date;
	private int admin_approval;

	public AdminVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminVo(int admin_no, String admin_id, String admin_pw, String admin_name, String admin_regi_date,
			int admin_approval) {
		super();
		this.admin_no = admin_no;
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
		this.admin_name = admin_name;
		this.admin_regi_date = admin_regi_date;
		this.admin_approval = admin_approval;
	}

	public int getAdmin_no() {
		return admin_no;
	}

	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_regi_date() {
		return admin_regi_date;
	}

	public void setAdmin_regi_date(String admin_regi_date) {
		this.admin_regi_date = admin_regi_date;
	}

	public int getAdmin_approval() {
		return admin_approval;
	}

	public void setAdmin_approval(int admin_approval) {
		this.admin_approval = admin_approval;
	}

	@Override
	public String toString() {
		return "AdminVo [admin_no=" + admin_no + ", admin_id=" + admin_id + ", admin_pw=" + admin_pw + ", admin_name="
				+ admin_name + ", admin_regi_date=" + admin_regi_date + ", admin_approval=" + admin_approval + "]";
	}

}
