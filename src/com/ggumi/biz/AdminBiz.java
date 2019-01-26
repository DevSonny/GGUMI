package com.ggumi.biz;

import javax.servlet.http.HttpSession;

import com.ggumi.vo.admin.AdminVo;

public interface AdminBiz {

	// 관리자 로그인 처리
	public AdminVo loginCheck(AdminVo vo);

	// 관리자 로그아웃 처리
	public void logout(HttpSession session);

	// 관리자정보 입력
	public String insert(AdminVo vo);

	// 관리자정보 조회
	public AdminVo infoView(AdminVo vo);

	// 관리자정보 수정
	public String update(AdminVo vo, HttpSession session);

	// 관리자정보 삭제
	public String delete(AdminVo vo, HttpSession session);
}
