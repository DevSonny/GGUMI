package com.ggumi.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ggumi.biz.NewsBiz;
import com.ggumi.biz.NoticeBiz;
import com.ggumi.biz.QuestionBiz;
import com.ggumi.vo.board.NewsVo;
import com.ggumi.vo.board.NoticeVo;
import com.ggumi.vo.board.QuestionVo;

@Controller
@RequestMapping("common")
public class CommonController {
	
	@Autowired
	NoticeBiz noticebiz;
	
	@Autowired
	NewsBiz newsbiz;
	
	@Autowired
	QuestionBiz questionbiz;
	
	@RequestMapping("/main.do")  
	public String login(NoticeVo vo, NewsVo nv, Model m) {
		// 메인 화면에 공지사항 5개 뿌려줌
		List<NoticeVo> five = noticebiz.getNoticeFive(vo);
		m.addAttribute("five",five);
		// 메인 화면에 창업뉴스 5개 뿌려줌
		List<NewsVo> fiven = newsbiz.getNewsFive(nv);
		m.addAttribute("fiven",fiven);
		
		return "common/main";
	}
//	===============훈태================
	@RequestMapping("/serviceIntro.do")
	public String servicepage() {
		return "common/serviceIntro";
	}
	
	@RequestMapping("/customcenterpage.do")
	public String customcenter() {
		return "common/customcenter";
	}
	
	@RequestMapping("/customquelistpage.do")
	public String customquelistpage() {
		return "common/CustomQueList";
	}
// ===================================	
	
	@RequestMapping("/jusoPopup.do")  
	public String juso() {
		return "common/jusoPopup";
	}
	
//	===============훈태=============================================
	
	// 공지사항 목록 가져오는 페이지로 가는 Controller --> 훈태
	@RequestMapping("/getNoticeList.do")
	public String getNoticeList(NoticeVo vo, Model m) {
		// Null Check
		if(vo.getSearchCondotion() == null)
			vo.setSearchCondotion("title");
		if(vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		List<NoticeVo> all = noticebiz.getAllNotice(vo);
		m.addAttribute("all",all);
		return "common/NoticeList";
	}
	
	// 공지사항 상세 보기
	@RequestMapping(value="/getNotice.do", method = RequestMethod.GET)
	public String getFindNotice(int notice_no, Model m) {		
		NoticeVo sub =  noticebiz.getNotice(notice_no);
		m.addAttribute("notice",sub);
		return "common/ViewNotice";
	}
	
// ----------------------------------------------
	// ----------------------창업News------------------------
	// 창업뉴스 목록 가져오는 페이지로 가는 Controller --> 훈태
	@RequestMapping("/getNewsList.do")
	public String getNewsList(NewsVo vo, Model m) {
		// Null Check
		if(vo.getSearchCondotion() == null)
			vo.setSearchCondotion("title");
		if(vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		List<NewsVo> all = newsbiz.getAllNews(vo);
		m.addAttribute("all",all);
		return "common/NewsList";
	}
				
	// 창업뉴스 상세 보기
	@RequestMapping(value="/getNews.do", method = RequestMethod.GET)
	public String getFindNews(int news_no, Model m) {		
		NewsVo sub =  newsbiz.getNews(news_no);
		m.addAttribute("news",sub);
		return "common/ViewNews";
	}
		
// -------------------------------------------------------------------------------------
	
	@RequestMapping(value="/download.do", method=RequestMethod.GET)
	public void fileDown(@RequestParam String notice_filename,HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		String path = "C:\\GGUMIRUMI2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\GGUMI\\upload";
		String orgname = notice_filename;
		
		response.setContentType("application/octet-stream");
		
		orgname = new String(orgname.getBytes("UTF-8"), "iso-8859-1");
		
		response.setHeader("Content-Disposition", "attachment; filename=\""+orgname+"\"");
		
		
		OutputStream os = response.getOutputStream();
		
		FileInputStream fis = new FileInputStream(path + File.separator + orgname);
		
		int n = 0;
		byte[] b = new byte[1024];
		while((n = fis.read(b)) != -1) {
			os.write(b,0,n);
		}
		fis.close();
		os.close();
		
/*		byte[] bytes = FileCopyUtils.copyToByteArray(file);
		String fn = new String(file.getName().getBytes(), "8859_1");
		response.setHeader("Content-Disposition", "attachment); filename=\"" + fn + "\"");
		response.setContentLength(bytes.length);
		response.setContentType("image/jpeg");
*/
	}
// --------------------------------------문의사항--------------------------------------------------
	@RequestMapping("/getQuestionList.do")
	public String getQuestionList(QuestionVo vo, Model m) {
		// Null Check
		if(vo.getSearchCondotion() == null)
			vo.setSearchCondotion("title");
		if(vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		List<QuestionVo> queall = questionbiz.getAllQuestion(vo);
		m.addAttribute("queall",queall);
		return "common/CustomQueList";
	}
	
	// 공지사항 상세 보기
	@RequestMapping(value="/getQuestion.do", method = RequestMethod.GET)
	public String getFindQuestion(int que_no, Model m) {		
		QuestionVo sub =  questionbiz.getQuestion(que_no);
		m.addAttribute("question",sub);
		return "common/ViewQuestion";
	}
	
	// 창업 News 글쓰기 페이지로 전환
	@RequestMapping("/insertQuestion.do")
	public String insert_question(QuestionVo vo, Model m) throws IOException{
		return "common/WriteQuestion";
	}
			
	// 창업 News 글쓰기 등록
	@RequestMapping(value="/questionwrite.do", method=RequestMethod.POST)
	public String input_news(@ModelAttribute QuestionVo vo, Model m) throws IOException{
		System.out.println("글쓰기 컨트롤러");
		int r = questionbiz.getInsertQuestion(vo);
		
		return "redirect:/common/getQuestionList.do";
	}
			
	// 창업 News 수정페이지로 전환
	@RequestMapping(value="updatequestionpage.do", method = RequestMethod.GET)
	public String update_question_page(int que_no, Model m) {
		QuestionVo sub = questionbiz.getQuestion(que_no);
		m.addAttribute("question",sub);
		return "common/UpdateQuestion";
	}
			
	// 창업 News 수정 Controller 연결
	@RequestMapping(value="/updatequestion.do", method = RequestMethod.POST)
	public String update_question(@ModelAttribute("questionvo") QuestionVo vo) {
		System.out.println("수정 Controller");
		int r = questionbiz.getUpdateQuestion(vo);
		return "redirect:/common/getQuestionList.do";
	}
			
	// 창업 News 삭제
	@RequestMapping(value="/deletequestion.do", method=RequestMethod.GET)
	public String delete_question(int que_no) {
		System.out.println("공지 삭제 Controller");
		int r = questionbiz.getDelQuestion(que_no);
		if(r > 0) {
			return "redirect:/common/getQuestionList.do";
		}else {
			return "common/CustomQueList";
		}
	}
}
