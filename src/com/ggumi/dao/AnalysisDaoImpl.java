package com.ggumi.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ggumi.vo.analysis.AreaVo;
import com.ggumi.vo.analysis.CommBlockVo;
import com.ggumi.vo.analysis.EstimatedSalesVo;
import com.ggumi.vo.analysis.JobVo;

@Repository
public class AnalysisDaoImpl implements AnalysisDao {
	
	@Autowired
	private SqlSessionFactory factory;

	@Override
	public List<JobVo> selectJob() {

		List<JobVo> list = null;
		try(SqlSession session = factory.openSession();) {
			list = session.selectList("analysis.selectByJobNameJobCode");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<AreaVo> selectGu() {
		List<AreaVo> list = null;
		try(SqlSession session = factory.openSession();) {
			list = session.selectList("analysis.selectGu");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<AreaVo> selectDong(int h_code) {
		List<AreaVo> list = null;
		try(SqlSession session = factory.openSession();){
			list = session.selectList("analysis.selectDong",h_code);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<EstimatedSalesVo> selectSalesByJob(String job_code) {
		List<EstimatedSalesVo> list = null;
		try(SqlSession session = factory.openSession();){
			list = session.selectList("analysis.selectSalesByJob",job_code);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<EstimatedSalesVo> selectSalesByHCode(int h_code) {
		List<EstimatedSalesVo> list = null;
		try(SqlSession session = factory.openSession();){
			list = session.selectList("analysis.selectSalesByHCode",h_code);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<EstimatedSalesVo> selectSalesTotal(HashMap<String, Object> map) {
		List<EstimatedSalesVo> list = null;
		try(SqlSession session = factory.openSession();){
			list = session.selectList("analysis.selectSalesTotal",map);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<CommBlockVo> selectPopulationByGu(String Gu) {
		List<CommBlockVo> list = null;
		try(SqlSession session = factory.openSession();){
			list = session.selectList("analysis.selectPopulationByGu",Gu);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<CommBlockVo> selectPopulationByHCode(int h_code) {
		List<CommBlockVo> list = null;
		try(SqlSession session = factory.openSession();){
			list = session.selectList("analysis.selectPopulationByHCode",h_code);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
