package com.ggumi.biz;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggumi.dao.AnalysisDao;
import com.ggumi.vo.analysis.AreaVo;
import com.ggumi.vo.analysis.CommBlockVo;
import com.ggumi.vo.analysis.EstimatedSalesVo;
import com.ggumi.vo.analysis.JobVo;

@Service
public class AnalysisBizImpl implements AnalysisBiz{
	@Autowired
	AnalysisDao dao;

	@Override
	public List<JobVo> selectJob() {
		return dao.selectJob();
	}

	@Override
	public List<AreaVo> selectGu() {
		return dao.selectGu();
	}

	@Override
	public List<AreaVo> selectDong(int h_code) {
		return dao.selectDong(h_code);
	}

	@Override
	public List<EstimatedSalesVo> selectSalesByJob(String job_code) {
		return dao.selectSalesByJob(job_code);
	}

	@Override
	public List<EstimatedSalesVo> selectSalesByHCode(int h_code) {
		return dao.selectSalesByHCode(h_code);
	}

	@Override
	public List<EstimatedSalesVo> selectSalesTotal(HashMap<String, Object> map) {
		return dao.selectSalesTotal(map);
		
	}

	@Override
	public List<CommBlockVo> selectPopulationByGu(String gu) {
		return dao.selectPopulationByGu(gu);
	}

	@Override
	public List<CommBlockVo> selectPopulationByHCode(int h_code) {
		return dao.selectPopulationByHCode(h_code);
	}

	
	
	
	
}
