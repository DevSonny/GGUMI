package com.ggumi.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggumi.dao.NoticeDao;
import com.ggumi.vo.board.NoticeVo;

@Service
public class NoticeBiz {
	@Autowired
	NoticeDao noticeDao;
	
	// 공지사항 리스트 출력
	public List<NoticeVo> getAllNotice(NoticeVo vo){
		return noticeDao.getAllNotice(vo);
	}
	
	// 공지사항 상세보기
	public NoticeVo getNotice(int notice_no) {
		System.out.println("getBoardBiz");
		return noticeDao.getFindNotice(notice_no);
	}
	
	// 메인페이지 공지사항 5개 뿌려주기
	public List<NoticeVo> getNoticeFive(NoticeVo vo){
		return noticeDao.getNoticeFive(vo);
	}
	
	// 공지 글 입력
	public int getInsertNotice(NoticeVo vo, String fileName) {
		System.out.println("글쓰기 Biz");
		NoticeVo bv = new NoticeVo();
		bv.setNotice_no(vo.getNotice_no());
		bv.setTitle(vo.getTitle());
		bv.setContent(vo.getContent());
		bv.setWriter(vo.getWriter());
		bv.setNotice_filename(fileName);
		
		return noticeDao.getinsertNotice(bv);
	}
	
	// 공지 글 수정
	public int getUpdateNotice(NoticeVo vo) {
		System.out.println("수정 BIZ");
		NoticeVo bv = new NoticeVo();
		
		bv.setTitle(vo.getTitle());
		bv.setContent(vo.getContent());
		bv.setWriter(vo.getWriter());
		bv.setNotice_no(vo.getNotice_no());
		
		return noticeDao.updateNotice(bv);
	}
	
	// 공지 글 삭제
	public int getDelNotice(int notice_no) {
		return noticeDao.deleteNotice(notice_no);
	}
}
