package com.ggumi.biz;

import java.util.HashMap;
import java.util.List;

import com.ggumi.vo.analysis.AreaVo;
import com.ggumi.vo.analysis.CommBlockVo;
import com.ggumi.vo.analysis.EstimatedSalesVo;
import com.ggumi.vo.analysis.JobVo;

public interface AnalysisBiz {
	
	public List<JobVo> selectJob();
	public List<AreaVo> selectGu();
	public List<AreaVo> selectDong(int h_code);
	public List<EstimatedSalesVo> selectSalesByJob(String job_code);
	public List<EstimatedSalesVo> selectSalesByHCode(int h_code);
	public List<EstimatedSalesVo> selectSalesTotal(HashMap<String, Object> map);
	public List<CommBlockVo> selectPopulationByGu(String gu);
	public List<CommBlockVo> selectPopulationByHCode(int h_code);

}
