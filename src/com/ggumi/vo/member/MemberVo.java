package com.ggumi.vo.member;

public class MemberVo {

	private int mem_no; // 회원번호
	private String id; // 아이디
	private String pw; // 비밀번호
	private String name; // 이름
	private String birth; // 생년월일
	private String sex; // 성별
	private String phone_no; // 핸드폰번호
	private String email; // 이메일
	private int email_avail; // 이메일수신여부 //수신 : 1, 수신거부 : 0
	private String mem_regi_date; // 가입일자
	private int mem_category_code; // 등급유형코드 //일반 : 100, 자영업 : 200, 공인중개사 : 300

	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberVo(int mem_no, String id, String pw, String name, String birth, String sex, String phone_no,
			String email, int email_avail, String mem_regi_date, int mem_category_code) {
		super();
		this.mem_no = mem_no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.sex = sex;
		this.phone_no = phone_no;
		this.email = email;
		this.email_avail = email_avail;
		this.mem_regi_date = mem_regi_date;
		this.mem_category_code = mem_category_code;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getEmail_avail() {
		return email_avail;
	}

	public void setEmail_avail(int email_avail) {
		this.email_avail = email_avail;
	}

	public String getMem_regi_date() {
		return mem_regi_date;
	}

	public void setMem_regi_date(String mem_regi_date) {
		this.mem_regi_date = mem_regi_date;
	}

	public int getMem_category_code() {
		return mem_category_code;
	}

	public void setMem_category_code(int mem_category_code) {
		this.mem_category_code = mem_category_code;
	}

	@Override
	public String toString() {
		return "MemberVo [mem_no=" + mem_no + ", id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth
				+ ", sex=" + sex + ", phone_no=" + phone_no + ", email=" + email + ", email_avail=" + email_avail
				+ ", mem_regi_date=" + mem_regi_date + ", mem_category_code=" + mem_category_code + "]";
	}
	

}
