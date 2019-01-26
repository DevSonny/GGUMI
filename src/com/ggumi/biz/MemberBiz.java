package com.ggumi.biz;

import javax.servlet.http.HttpSession;

import com.ggumi.vo.member.EstateVo;
import com.ggumi.vo.member.MemberVo;
import com.ggumi.vo.member.MyStoreVo;
import com.ggumi.vo.member.RealtorVo;

public interface MemberBiz {
	
	// 회원가입 아이디 중복체크
	public int joinCheck(String id);
	
	// 회원 로그인 처리 
	public MemberVo loginCheck(MemberVo vo);	

	// 회원 로그아웃 처리
	public void logout(HttpSession session);

	// 회원정보 입력 
	public String insert(MemberVo vo);
	
	// 회원정보 조회 
	public MemberVo infoView(int mem_no);
	
	// 회원정보 수정
	public String update(MemberVo vo);
	
    //회원정보 삭제
	public String delete(MemberVo vo);
	
	//부동산매물등록
	public int addEstate(EstateVo vo);
		
	// 공인중개사 등록
	public int insertRealtor(RealtorVo vo);
	
	// 내가게 등록 
	public int insertMyStore(MyStoreVo vo);
	
	
	
	
}
