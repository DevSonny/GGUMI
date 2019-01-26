package com.ggumi.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ggumi.biz.MemberBiz;
import com.ggumi.vo.member.EstateVo;
import com.ggumi.vo.member.MemberVo;
import com.ggumi.vo.member.MyStoreVo;
import com.ggumi.vo.member.RealtorVo;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	private MemberBiz biz;
	
	// 회원 로그인 화면으로 이동 
	@RequestMapping("/login.do")  
	public String login(HttpSession session) {
		if(session.getAttribute("memberVo") != null || session.getAttribute("adminVo") != null) {
			return "common/badApproach";
		}
		return "member/login/login";
	}
	
	// 회원 로그인 처리 
	@RequestMapping(value="/loginCheck.do", method=RequestMethod.POST)  
	public ModelAndView loginCheck(@ModelAttribute MemberVo vo, HttpSession session) {
		MemberVo member = biz.loginCheck(vo);
		ModelAndView mav = null;
		if(member == null) {
			mav = new ModelAndView("member/login/login","loginFail",true);
		}else {
			session.setAttribute("memberVo", member);
			
			mav = new ModelAndView("common/main");
		}
		return mav;
	}
	
	
	// 회원 로그아웃 처리
	@RequestMapping("/logout.do")   
	public String logout(HttpSession session) {
		session.invalidate();
		return "common/main";
	}
	
	// 회원가입 화면 이동 
	@RequestMapping("/join.do")   
	public String join() {
		return "member/join/join";
	}
	
	// 회원가입 아이디 중복체크
	@RequestMapping(value="/joinCheck.do", method=RequestMethod.POST)  
	public void joinCheck(@RequestParam("id") String id ,HttpServletResponse response){
		int result = biz.joinCheck(id);
		try {
			response.getWriter().write(result+"");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 회원정보 입력 
	@RequestMapping("/insert.do")  
	public ModelAndView insert(@ModelAttribute MemberVo vo) {
		String joined_id = biz.insert(vo);
		ModelAndView mav = new ModelAndView("member/join/joinResult","joined_id",joined_id);
		return mav;
	}
	

	// 내가게 페이지 이동
	@RequestMapping("/myStore.do")
	public ModelAndView myStore(HttpSession session) {
		ModelAndView mav = new ModelAndView("common/fail/needLogin");
		MemberVo member = (MemberVo)session.getAttribute("memberVo");
		if(member != null) {
			mav.setViewName("member/myStore/myStore");
		}
		return mav;
	}
	
	// 내가게 등록페이지 이동
	@RequestMapping("/regiMyStore.do")
	public String regiMyStore() {
		return "member/myStore/regiMyStore";
	}
	
	// 내가게 등록
	@RequestMapping("/insertMyStore.do")
	public ModelAndView insertMyStore(@ModelAttribute MyStoreVo vo ,HttpSession session) {
		int result = biz.insertMyStore(vo);
		if(result > 0) {
			System.out.println("aaa: "+vo.getMem_no());
			MemberVo member = biz.infoView(vo.getMem_no());
			System.out.println("bbb : " + member);
			System.out.println("ddd : "+biz.infoView(vo.getMem_no()));
			session.setAttribute("memberVo", biz.infoView(vo.getMem_no()));
		}
		ModelAndView mav = new ModelAndView("member/myStore/regiMyStoreResult","result",result);
		return mav;
		
	}
	
	//내가게 목록 보기
	@RequestMapping("/myStoreList.do")
	public ModelAndView myStoreList() {
		//구현해야함 
		return null;
		
	}
	
	//마이페이지로이동
	@RequestMapping("/mypage.do")
	public String mypage(HttpSession session) {
		if(session.getAttribute("memberVo") == null) {
			return "common/needLogin";
		}
		return "member/mypage/mypage";
	}
	
	// 회원정보변경페이지로이동
	@RequestMapping("/changeinfo.do")
	public String updateInfo(){
		return "member/mypage/update";
	}
	
	// 회원정보수정
	@RequestMapping("/update.do")
	public ModelAndView update(@ModelAttribute MemberVo vo, HttpSession session) {
		System.out.println("컨트롤러에서 vo : "+vo);
		String updated_id = biz.update(vo);
		MemberVo member = biz.loginCheck(vo);
		session.setAttribute("memberVo", member);
		ModelAndView mav = null;
		if (updated_id == null) {
			mav = new ModelAndView("member/mypage/UpdateFail", "updated_id", updated_id);
		} else {
			mav = new ModelAndView("member/mypage/updateResult", "updated_id", updated_id);
		}
		return mav;
	}


	// 회원탈퇴페이지로이동
	@RequestMapping("/deleteMem.do")
	public String deleteMem() {
		return "member/mypage/delete";
	}

	// 회원탈퇴하기
	@RequestMapping("/delete.do")
	public ModelAndView delete(@ModelAttribute MemberVo vo, HttpSession session) {
		System.out.println("delete.do의 vo" + vo);
		ModelAndView mav = null;
		MemberVo member = (MemberVo) session.getAttribute("memberVo");
		System.out.println(member.getPw()==vo.getPw()); // false 그러니깐 회원탈퇴를 못함 
		System.out.println("member.getPw() : "+member.getPw());
		System.out.println("vo.getPw() : "+vo.getPw());
		//System.out.println(member.getPw()==session.); // false 그러니깐 회원탈퇴를 못함 
		
		if(member.getPw().equals(vo.getPw())) {
			String out_id = biz.delete(member);
			mav = new ModelAndView("member/mypage/deleteResult");
			session.invalidate();
		}else {
			mav = new ModelAndView("member/mypage/deleteFail");
		}
		return mav;
	
		}
	
	// 내 부동산 화면으로 이동
	@RequestMapping("/myEstate.do")
	public String addRealtor(HttpSession session) {
		if(session.getAttribute("memberVo") == null) {
			return "common/needLogin";
		}
		return "member/mypage/myEstate";
	}
	
	// 공인중개사등록페이지로이동
	@RequestMapping("/regiRealtor.do")
	public String regiEstate(HttpSession session) {
		if(session.getAttribute("memberVo") == null) {
			return "common/fail/needLogin";
		}
		return "member/mypage/regiRealtor";
	}
	
	// 공인중개사 등록
	@RequestMapping("insertRealtor.do")
	public ModelAndView addRealtor(@ModelAttribute RealtorVo vo) {
		System.out.println("ct realtor :" + vo);
		int mem_no = biz.insertRealtor(vo);
		System.out.println("ct realtor222 :" + vo);
		ModelAndView mav = new ModelAndView("member/mypage/realtorSuccess","mem_no",mem_no);
		return mav;
	}
	
	
	// 부동산등록페이지로이동
	/*@RequestMapping("/upEstate.do")
	public String estate() {
		return "member/mypage/estate";
	}*/
	
	//부동산매물등록
	/*@RequestMapping("/insertEstate.do")
	public ModelAndView addEstate(@ModelAttribute EstateVo vo) {
		int estate = biz.addEstate(vo);
		ModelAndView mav = new ModelAndView("member/mypage/EstateSuccess","estate",estate);
		return mav;

	}*/
	
	/*@RequestMapping("/uploadEstate.do")
	public ModelAndView upEstate(HttpSession session) {
		ModelAndView mav = new ModelAndView("member/mypage/estatefail");
		
		MemberVo member =  (MemberVo) session.getAttribute("memberVo");
		
		if(member != null && member.getMem_category_code() == 300) {
			mav.setViewName("member/mypage/estate");
		}
		return mav;
	}*/
	
	// 결과 레포트 페이지로 이동
	@RequestMapping("/totalResult.do")
	public String totalResult() {
		return "common/totalResult";
	}
	
	
}
