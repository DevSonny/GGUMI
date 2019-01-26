package com.ggumi.dao;

import javax.servlet.http.HttpSession;


import com.ggumi.vo.member.EstateVo;
import com.ggumi.vo.member.MemberVo;
import com.ggumi.vo.member.MyStoreVo;
import com.ggumi.vo.member.RealtorVo;

public interface MemberDao {
	
	
	
	// 회원 로그아웃 처리
	public void logout(HttpSession session);
	
	// 회원정보 입력
	public String insert(MemberVo vo);
	
	// 회원정보 조회(id,pw 이용)
	public MemberVo selectByIdPw(MemberVo vo);
	
	// 회원정보 수정
	public String update(MemberVo vo);
	
	//회원정보 삭제
	public String delete(MemberVo vo);

	// 회원정보 조회(id 이용)
	public MemberVo selectById(String id);
	
	//회원정보 조회(mem_no 이용)
	public MemberVo selectByMemNo(int mem_no);
	
	// 부동산매물등록
	public int addEstate(EstateVo vo);
		
	// 공인중개사 등록
	public int insertRealtor(RealtorVo vo);
	
	// 내가게 등록 
	public int insertMyStore(MyStoreVo vo);
}
