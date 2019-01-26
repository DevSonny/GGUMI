package com.ggumi.vo.analysis;

public class EstimatedSalesVo {

	private String job_code;
	private int comm_code;
	private int monthly_sales;

	public EstimatedSalesVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EstimatedSalesVo(String job_code, int comm_code, int monthly_sales) {
		super();
		this.job_code = job_code;
		this.comm_code = comm_code;
		this.monthly_sales = monthly_sales;
	}

	public String getJob_code() {
		return job_code;
	}

	public void setJob_code(String job_code) {
		this.job_code = job_code;
	}

	public int getComm_code() {
		return comm_code;
	}

	public void setComm_code(int comm_code) {
		this.comm_code = comm_code;
	}

	public int getMonthly_sales() {
		return monthly_sales;
	}

	public void setMonthly_sales(int monthly_sales) {
		this.monthly_sales = monthly_sales;
	}

	@Override
	public String toString() {
		return "EstimatedSales [job_code=" + job_code + ", comm_code=" + comm_code + ", monthly_sales=" + monthly_sales
				+ "]";
	}
}
