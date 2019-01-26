package com.ggumi.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ggumi.biz.AnalysisBiz;
import com.ggumi.vo.analysis.AreaVo;
import com.ggumi.vo.analysis.CommBlockVo;
import com.ggumi.vo.analysis.EstimatedSalesVo;
import com.ggumi.vo.analysis.JobVo;

@Controller
@RequestMapping("analysis")
public class AnalysisController {
	@Autowired
	private AnalysisBiz biz;
	
	//상권분석 지도화면으로 이동
	@RequestMapping("/map.do")
	public String map(){
		return "analysis/map";
	}
	
	//ajax로 업종 불러오기
	@RequestMapping("selectJobNameJobCode.do")
	@ResponseBody
	public List<JobVo> selectJobNameJobCode() {
		return (List<JobVo>)biz.selectJob();
	}
	//ajax로 행정구 불러오기
	
	@RequestMapping("selectGu.do")
	@ResponseBody
	public List<AreaVo> selectGu(){
		return (List<AreaVo>)biz.selectGu();
	}
	//ajax로 행정동 불러오기
	@RequestMapping("selectDong.do")
	@ResponseBody
	public List<AreaVo> selectDong(@RequestParam int h_code){
		return (List<AreaVo>)biz.selectDong(h_code);
	}
	
	//ajax로 job_code입력해서 추정매출
	@RequestMapping("selectSalesByJob.do")
	@ResponseBody
	public List<EstimatedSalesVo> selectSalesByJob(@RequestParam String job_code){
		return (List<EstimatedSalesVo>)biz.selectSalesByJob(job_code);
	}
	
	//ajax로 comm_code입력해서 추정매출
	@RequestMapping("selectSalesByHCode.do")
	@ResponseBody
	public List<EstimatedSalesVo> selectSalesByComm(@RequestParam int h_code){
		return (List<EstimatedSalesVo>)biz.selectSalesByHCode(h_code);
	}
	
	//ajax로 comm_code입력해서 추정매출
	@RequestMapping("selectSalesTotal.do")
	@ResponseBody
	public List<EstimatedSalesVo> selectSalesTotal(@RequestParam(value="h_code",required=false) int h_code, @RequestParam(value="job_code",required=false) String job_code, HashMap<String,Object> map){
		map.put("h_code", h_code);
		map.put("job_code", job_code);
		return (List<EstimatedSalesVo>)biz.selectSalesTotal(map);
	}
	
	//ajax로 gu입력해서 추정매출
	@RequestMapping("selectPopulationByGu.do")
	@ResponseBody
	public List<CommBlockVo> selectPopulationByGu(@RequestParam String gu){
		return (List<CommBlockVo>)biz.selectPopulationByGu(gu);
	}
	
	//ajax로 comm_code입력해서 추정매출
	@RequestMapping("selectPopulationByHCode.do")
	@ResponseBody
	public List<CommBlockVo> selectPopulationByHCode(@RequestParam int h_code){
		return (List<CommBlockVo>)biz.selectPopulationByHCode(h_code);
	}
	
	
	
	
}
