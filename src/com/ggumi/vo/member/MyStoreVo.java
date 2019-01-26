package com.ggumi.vo.member;

public class MyStoreVo {

	private int my_store_no; // 내가게번호
	private int mem_no; // 회원번호
	private int h_code; // 행정동코드
	private String job_code; // 업종코드
	private String biz_regi_no; // 사업자등록번호
	private String detail_address; // 상세주소
	private String jibun_address; // 지번주소
	private String road_address; // 도로명주소
	private String zip_no; // 우편번호
	private String store_tel; // 사업장전화번호
	private String store_name; // 상호명
	private int business_code; // 창업형태코드
	private String regi_date; // 등록일자
	private String lat; // 위도
	private String lng; // 경도

	public MyStoreVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyStoreVo(int my_store_no, int mem_no, int h_code, String job_code, String biz_regi_no,
			String detail_address, String jibun_address, String road_address, String zip_no, String store_tel,
			String store_name, int business_code, String regi_date, String lat, String lng) {
		super();
		this.my_store_no = my_store_no;
		this.mem_no = mem_no;
		this.h_code = h_code;
		this.job_code = job_code;
		this.biz_regi_no = biz_regi_no;
		this.detail_address = detail_address;
		this.jibun_address = jibun_address;
		this.road_address = road_address;
		this.zip_no = zip_no;
		this.store_tel = store_tel;
		this.store_name = store_name;
		this.business_code = business_code;
		this.regi_date = regi_date;
		this.lat = lat;
		this.lng = lng;
	}

	public int getMy_store_no() {
		return my_store_no;
	}

	public void setMy_store_no(int my_store_no) {
		this.my_store_no = my_store_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getH_code() {
		return h_code;
	}

	public void setH_code(int h_code) {
		this.h_code = h_code;
	}

	public String getJob_code() {
		return job_code;
	}

	public void setJob_code(String job_code) {
		this.job_code = job_code;
	}

	public String getBiz_regi_no() {
		return biz_regi_no;
	}

	public void setBiz_regi_no(String biz_regi_no) {
		this.biz_regi_no = biz_regi_no;
	}

	public String getDetail_address() {
		return detail_address;
	}

	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
	}

	public String getJibun_address() {
		return jibun_address;
	}

	public void setJibun_address(String jibun_address) {
		this.jibun_address = jibun_address;
	}

	public String getRoad_address() {
		return road_address;
	}

	public void setRoad_address(String road_address) {
		this.road_address = road_address;
	}

	public String getZip_no() {
		return zip_no;
	}

	public void setZip_no(String zip_no) {
		this.zip_no = zip_no;
	}

	public String getStore_tel() {
		return store_tel;
	}

	public void setStore_tel(String store_tel) {
		this.store_tel = store_tel;
	}

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public int getBusiness_code() {
		return business_code;
	}

	public void setBusiness_code(int business_code) {
		this.business_code = business_code;
	}

	public String getRegi_date() {
		return regi_date;
	}

	public void setRegi_date(String regi_date) {
		this.regi_date = regi_date;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	@Override
	public String toString() {
		return "MyStoreVo [my_store_no=" + my_store_no + ", mem_no=" + mem_no + ", h_code=" + h_code + ", job_code="
				+ job_code + ", biz_regi_no=" + biz_regi_no + ", detail_address=" + detail_address + ", jibun_address="
				+ jibun_address + ", road_address=" + road_address + ", zip_no=" + zip_no + ", store_tel=" + store_tel
				+ ", store_name=" + store_name + ", business_code=" + business_code + ", regi_date=" + regi_date
				+ ", lat=" + lat + ", lng=" + lng + "]";
	}

}
