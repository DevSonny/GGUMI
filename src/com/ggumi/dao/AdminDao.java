package com.ggumi.dao;

import javax.servlet.http.HttpSession;

import com.ggumi.vo.admin.AdminVo;

public interface AdminDao {

	// 관리자 로그아웃 처리
	public void logout(HttpSession session);

	// 관리자정보 입력
	public String insert(AdminVo vo);

	// 관리자정보 조회(id,pw 이용)
	public AdminVo selectByIdPw(AdminVo vo);

	// 관리자정보 수정
	public String update(AdminVo vo);

	// 관리자정보 삭제
	public String delete(AdminVo vo);

}
