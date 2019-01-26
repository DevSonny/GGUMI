package com.ggumi.biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggumi.dao.MemberDao;
import com.ggumi.vo.member.EstateVo;
import com.ggumi.vo.member.MemberVo;
import com.ggumi.vo.member.MyStoreVo;
import com.ggumi.vo.member.RealtorVo;


@Service
public class MemberBizImpl implements MemberBiz {
	
	@Autowired
	MemberDao dao;
	
	// 회원가입 아이디 중복체크
	@Override
	public int joinCheck(String id) {
		MemberVo member = dao.selectById(id);
		int result = 0; //사용할수 없는 아이디
		if(member == null && !id.equals("")) {
			result = 1; //사용할수 있는 아이디
		}
		return result;
	}
	
	// 회원 로그인 처리 
	@Override
	public MemberVo loginCheck(MemberVo vo) {
		MemberVo member = dao.selectByIdPw(vo);
		return member;
	}

	// 회원 로그아웃 처리 
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	// 회원정보 입력
	@Override
	public String insert(MemberVo vo) {
		return dao.insert(vo);
	}

	// 회원정보 조회
	@Override
	public MemberVo infoView(int mem_no) {
		MemberVo member = dao.selectByMemNo(mem_no);
		return member;
	}

	// 회원정보 수정
	@Override
	public String update(MemberVo vo) {
		String updated_id = dao.update(vo);
		return updated_id;
	}
	
	//회원정보 삭제
	@Override
	public String delete(MemberVo vo) {
		String out_id = dao.delete(vo);
		return out_id;
	}
	
	@Override
	public int addEstate(EstateVo vo) {
		return dao.addEstate(vo);
	}

	@Override
	public int insertRealtor(RealtorVo vo) {
		return dao.insertRealtor(vo);
	}
	
	// 내가게 등록 
	public int insertMyStore(MyStoreVo vo) {
		System.out.println("비즈옴 insertMyStore : "+vo);
		int result = dao.insertMyStore(vo);
		System.out.println("비즈에서 result  : "+result);
		return result;
	}


}
