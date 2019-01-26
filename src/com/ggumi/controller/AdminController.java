package com.ggumi.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ggumi.biz.AdminBiz;
import com.ggumi.biz.NewsBiz;
import com.ggumi.biz.NoticeBiz;
import com.ggumi.util.DuplicateFile;
import com.ggumi.vo.admin.AdminVo;
import com.ggumi.vo.board.NewsVo;
import com.ggumi.vo.board.NoticeVo;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	private AdminBiz biz;
	
	@Autowired
	NoticeBiz noticebiz;
	
	@Autowired
	NewsBiz newsbiz;
	
	// 愿�由ъ옄 濡쒓렇�씤 �솕硫댁쑝濡� �씠�룞 
	@RequestMapping("/login.do")
	public String login() {
		return "admin/login/login";
	}
	
	// 愿�由ъ옄 濡쒓렇�씤 泥섎━ 
	@RequestMapping(value="/loginCheck.do", method=RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute AdminVo vo, HttpSession session,	ModelAndView mav) {

		AdminVo admin = biz.loginCheck(vo);
		
		if(admin == null) {
			mav.setViewName("admin/login/loginFail");
		}else if(admin.getAdmin_approval() == 0){
			mav.setViewName("admin/login/loginFail");
			mav.addObject("admin_id", admin.getAdmin_id());
		}else {
			session.setAttribute("adminVo", admin);
			mav.setViewName("common/main");
		}
		return mav;
	}
	
	// 愿�由ъ옄 濡쒓렇�븘�썐 泥섎━
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "common/main";
	}
	
	// 愿�由ъ옄�쉶�썝媛��엯 �솕硫� �씠�룞 
	@RequestMapping("/join.do")   
	public String join() {
		return "admin/join/join";
	}
	
	// 愿�由ъ옄 �젙蹂� �엯�젰 
	@RequestMapping("/insert.do")  
	public ModelAndView insert(@ModelAttribute AdminVo vo) {
		String joined_admin_id = biz.insert(vo);
		ModelAndView mav = new ModelAndView("admin/join/joinResult","joined_admin_id",joined_admin_id);
		return mav;
	}
	
//  ==============================�썕�깭===============================================	
	// 怨듭��궗�빆 湲��벐湲� �럹�씠吏�濡� �쟾�솚
	@RequestMapping("/insertNotice.do")
	public String insert_notice(NoticeVo vo, Model m) throws IOException{
		return "admin/notice/WriteNotice";
	}
	
	// 怨듭��궗�빆 湲��벐湲� �벑濡�
	@RequestMapping(value="/noticewrite.do", method=RequestMethod.POST)
	public String input_notice(@ModelAttribute NoticeVo vo, Model m,String title, MultipartFile file1,HttpServletRequest request) throws IOException{
		System.out.println("湲��벐湲� 而⑦듃濡ㅻ윭");
		
		
		
		String fileName = file1.getOriginalFilename();
		String saveDir = request.getServletContext().getRealPath("upload");
		System.out.println(saveDir);
		System.out.println(title);
		System.out.println(fileName);
		// String saveFile = saveDir + "\\" + file1.getOriginalFilename();
		
		int r = noticebiz.getInsertNotice(vo, fileName);
		
		// 以묐났�맂 �뙆�씪�씤 寃쎌슦 �뜮�뼱 �벐湲곌린 �릺湲� �븣臾몄뿉 以묐났 諛⑹� 泥섎━
		File fileObj
		// = new File(saveFile);
		// = new File(saveDir, file1.getOriginalFilename());
		
		// 以묐났�맂 �뙆�씪 諛⑹� 泥섎━瑜� �븳 �뙆�씪 媛앹껜瑜� �궗�슜.
		=  DuplicateFile.getFile(saveDir, file1);
		
		file1.transferTo(fileObj);
		m.addAttribute("title", title);
		m.addAttribute("file1", fileName);
		m.addAttribute("fileName", fileName);
		m.addAttribute("serverFileName", fileObj.getName());
		
		
		
		return "redirect:/common/getNoticeList.do";
	}
	
	// 怨듭��궗�빆 �닔�젙�럹�씠吏�濡� �쟾�솚
	@RequestMapping(value="updatenoticepage.do", method = RequestMethod.GET)
	public String update_notice_page(int notice_no, Model m) {
		NoticeVo sub = noticebiz.getNotice(notice_no);
		m.addAttribute("notice",sub);
		return "admin/notice/UpdateNotice";
	}
	
	// 怨듭��궗�빆 �닔�젙 Controller �뿰寃�
	@RequestMapping(value="/updatenotice.do", method = RequestMethod.POST)
	public String update_notice(@ModelAttribute("boardvo") NoticeVo vo) {
		System.out.println("�닔�젙 Controller");
		int r = noticebiz.getUpdateNotice(vo);
		return "redirect:/common/getNoticeList.do";
	}
	
	// 怨듭��궗�빆 �궘�젣
	@RequestMapping(value="/deletenotice.do", method=RequestMethod.GET)
	public String delete_notice(int notice_no) {
		System.out.println("怨듭� �궘�젣 Controller");
		int r = noticebiz.getDelNotice(notice_no);
		if(r > 0) {
			return "redirect:/common/getNoticeList.do";
		}else {
			return "common/getNoticeList";
		}
	}
	
	
//  ===============================================================================	
	// ------------------------------ 李쎌뾽 News -----------------------------------------
	
		// 李쎌뾽 News 湲��벐湲� �럹�씠吏�濡� �쟾�솚
		@RequestMapping("/insertNews.do")
		public String insert_news(NewsVo vo, Model m) throws IOException{
			return "admin/news/WriteNews";
		}
				
		// 李쎌뾽 News 湲��벐湲� �벑濡�
		@RequestMapping(value="/newswrite.do", method=RequestMethod.POST)
		public String input_news(@ModelAttribute NewsVo vo, Model m) throws IOException{
			System.out.println("湲��벐湲� 而⑦듃濡ㅻ윭");
			int r = newsbiz.getInsertNews(vo);
								
			/*MultipartFile uploadFile = vo.getUploadFile();
			if(!uploadFile.isEmpty()) {
				String fileName = uploadFile.getOriginalFilename();
				uploadFile.transferTo(new File("C:\\GGUMI\\GGUMI\\download" + "/" + fileName));
			}*/
			return "redirect:/common/getNewsList.do";
		}
				
		// 李쎌뾽 News �닔�젙�럹�씠吏�濡� �쟾�솚
		@RequestMapping(value="updatenewspage.do", method = RequestMethod.GET)
		public String update_news_page(int news_no, Model m) {
			NewsVo sub = newsbiz.getNews(news_no);
			m.addAttribute("news",sub);
			return "admin/news/UpdateNews";
		}
				
		// 李쎌뾽 News �닔�젙 Controller �뿰寃�
		@RequestMapping(value="/updatenews.do", method = RequestMethod.POST)
		public String update_news(@ModelAttribute("newsvo") NewsVo vo) {
			System.out.println("�닔�젙 Controller");
			int r = newsbiz.getUpdateNews(vo);
			return "redirect:/common/getNewsList.do";
		}
				
		// 李쎌뾽 News �궘�젣
		@RequestMapping(value="/deletenews.do", method=RequestMethod.GET)
		public String delete_news(int news_no) {
			System.out.println("怨듭� �궘�젣 Controller");
			int r = newsbiz.getDelNews(news_no);
			if(r > 0) {
				return "redirect:/common/getNewsList.do";
			}else {
				return "common/getNewsList";
			}
		}
			
	//  ===============================================================================	
}
