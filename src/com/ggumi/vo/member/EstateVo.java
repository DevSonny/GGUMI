package com.ggumi.vo.member;

public class EstateVo {
	
	private int estate_no;					// 부동산매물번호
	private int mem_no;						// 회원번호
	private int H_code;						// 행정동코드
	private String building_name;			// 매물명
	private String space_area;				// 면적
	private String floor_info;				// 층정보
	private int deposit;					// 보증금
	private int monthly_fee;				// 월세
	private String parking;					// 주차가능여부
	private String regi_date;				// 등록일자  // 일단! .. date지만 편의상 String으로 해놓음
	private String del_date;				// 삭제일자
	private String detail_address;			// 상세주소
	private String description;				// 상세설명
	private String photo;					// 상세사진경로
	private String curr_job;				// 현재업종
	private int rent_type;					// 거래유형코드		// 100: 월세 	200:전세 	300:매매
	private String moving_avail;			// 입주가능일
	private String loan_info;				// 융자금정보
	private int admin_approval;				// 관리자승인여부
	
	
	public int getEstate_no() {
		return estate_no;
	}
	public void setEstate_no(int estate_no) {
		this.estate_no = estate_no;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public int getH_code() {
		return H_code;
	}
	public void setH_code(int h_code) {
		H_code = h_code;
	}
	public String getBuilding_name() {
		return building_name;
	}
	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}
	public String getSpace_area() {
		return space_area;
	}
	public void setSpace_area(String space_area) {
		this.space_area = space_area;
	}
	public String getFloor_info() {
		return floor_info;
	}
	public void setFloor_info(String floor_info) {
		this.floor_info = floor_info;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getMonthly_fee() {
		return monthly_fee;
	}
	public void setMonthly_fee(int monthly_fee) {
		this.monthly_fee = monthly_fee;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getRegi_date() {
		return regi_date;
	}
	public void setRegi_date(String regi_date) {
		this.regi_date = regi_date;
	}
	public String getDel_date() {
		return del_date;
	}
	public void setDel_date(String del_date) {
		this.del_date = del_date;
	}
	public String getDetail_address() {
		return detail_address;
	}
	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getCurr_job() {
		return curr_job;
	}
	public void setCurr_job(String curr_job) {
		this.curr_job = curr_job;
	}
	public int getRent_type() {
		return rent_type;
	}
	public void setRent_type(int rent_type) {
		this.rent_type = rent_type;
	}
	public String getMoving_avail() {
		return moving_avail;
	}
	public void setMoving_avail(String moving_avail) {
		this.moving_avail = moving_avail;
	}
	public String getLoan_info() {
		return loan_info;
	}
	public void setLoan_info(String loan_info) {
		this.loan_info = loan_info;
	}
	public int getAdmin_approval() {
		return admin_approval;
	}
	public void setAdmin_approval(int admin_approval) {
		this.admin_approval = admin_approval;
	}
	public EstateVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EstateVo(int estate_no, int mem_no, int h_code, String building_name, String space_area, String floor_info,
			int deposit, int monthly_fee, String parking, String regi_date, String del_date, String detail_address,
			String description, String photo, String curr_job, int rent_type, String moving_avail, String loan_info,
			int admin_approval) {
		super();
		this.estate_no = estate_no;
		this.mem_no = mem_no;
		H_code = h_code;
		this.building_name = building_name;
		this.space_area = space_area;
		this.floor_info = floor_info;
		this.deposit = deposit;
		this.monthly_fee = monthly_fee;
		this.parking = parking;
		this.regi_date = regi_date;
		this.del_date = del_date;
		this.detail_address = detail_address;
		this.description = description;
		this.photo = photo;
		this.curr_job = curr_job;
		this.rent_type = rent_type;
		this.moving_avail = moving_avail;
		this.loan_info = loan_info;
		this.admin_approval = admin_approval;
	}
	
	
	@Override
	public String toString() {
		return "EstateVo [estate_no=" + estate_no + ", mem_no=" + mem_no + ", H_code=" + H_code + ", building_name="
				+ building_name + ", space_area=" + space_area + ", floor_info=" + floor_info + ", deposit=" + deposit
				+ ", monthly_fee=" + monthly_fee + ", parking=" + parking + ", regi_date=" + regi_date + ", del_date="
				+ del_date + ", detail_address=" + detail_address + ", description=" + description + ", photo=" + photo
				+ ", curr_job=" + curr_job + ", rent_type=" + rent_type + ", moving_avail=" + moving_avail
				+ ", loan_info=" + loan_info + ", admin_approval=" + admin_approval + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
