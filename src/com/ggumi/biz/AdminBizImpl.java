package com.ggumi.biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggumi.dao.AdminDao;
import com.ggumi.vo.admin.AdminVo;

@Service
public class AdminBizImpl implements AdminBiz {

	@Autowired
	AdminDao dao;
	
	// 관리자 로그인 처리
	@Override
	public AdminVo loginCheck(AdminVo vo) {
		AdminVo admin = dao.selectByIdPw(vo);
		return admin;
	}

	// 관리자 로그아웃 처리
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	// 관리자정보 입력
	@Override
	public String insert(AdminVo vo) {
		return dao.insert(vo);
	}

	// 관리자정보 조회
	@Override
	public AdminVo infoView(AdminVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	// 관리자정보 수정
	@Override
	public String update(AdminVo vo, HttpSession session) {
		// TODO Auto-generated method stub
		return null;
	}

	// 관리자정보 삭제
	@Override
	public String delete(AdminVo vo, HttpSession session) {
		// TODO Auto-generated method stub
		return null;
	}

}
