package com.ggumi.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggumi.dao.QuestionDao;
import com.ggumi.vo.board.QuestionVo;

@Service
public class QuestionBiz {
	@Autowired
	QuestionDao questionDao;
	
	// 문의사항 리스트 출력
	public List<QuestionVo> getAllQuestion(QuestionVo vo){
		return questionDao.getAllQuestion(vo);
	}
		
	// 문의사항 상세보기
	public QuestionVo getQuestion(int que_no) {
		System.out.println("getBoardBiz");
		return questionDao.getFindQuestion(que_no);
	}
	
	// 공지 글 입력
	public int getInsertQuestion(QuestionVo vo) {
		System.out.println("글쓰기 Biz");
		QuestionVo bv = new QuestionVo();
		bv.setQue_no(vo.getQue_no());
		bv.setTitle(vo.getTitle());
		bv.setContent(vo.getContent());
		bv.setWriter(vo.getWriter());
		
		return questionDao.getinsertQuestion(bv);
	}
	
	// 공지 글 수정
	public int getUpdateQuestion(QuestionVo vo) {
		System.out.println("수정 BIZ");
		QuestionVo bv = new QuestionVo();
		
		bv.setQue_no(vo.getQue_no());
		bv.setTitle(vo.getTitle());
		bv.setContent(vo.getContent());
		bv.setWriter(vo.getWriter());
		
		return questionDao.updateQuestion(bv);
	}
	
	// 공지 글 삭제
	public int getDelQuestion(int que_no) {
		return questionDao.deleteQuestion(que_no);
	}

	public List<QuestionVo> selectBoardCommentByCode(QuestionVo questionvo) {
		
		return null;
	}

	public void addComment(QuestionVo questionvo) {
		
	}	
}
