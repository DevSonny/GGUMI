package com.ggumi.vo.analysis;

public class AreaVo {

	private int h_code;
	private String h_dong;
	private String gu;

	public AreaVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AreaVo(int h_code, String h_dong, String gu) {
		super();
		this.h_code = h_code;
		this.h_dong = h_dong;
		this.gu = gu;
	}

	public int getH_code() {
		return h_code;
	}

	public void setH_code(int h_code) {
		this.h_code = h_code;
	}

	public String getH_dong() {
		return h_dong;
	}

	public void setH_dong(String h_dong) {
		this.h_dong = h_dong;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	@Override
	public String toString() {
		return "Area [h_code=" + h_code + ", h_dong=" + h_dong + ", gu=" + gu + "]";
	}

}
