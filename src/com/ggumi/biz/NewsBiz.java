package com.ggumi.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ggumi.dao.NewsDao;
import com.ggumi.vo.board.NewsVo;

@Service
public class NewsBiz {
	@Autowired
	NewsDao newsDao;
	
	// 공지사항 리스트 출력
	public List<NewsVo> getAllNews(NewsVo vo){
		return newsDao.getAllNews(vo);
	}
	
	// 공지사항 상세보기
	public NewsVo getNews(int news_no) {
		System.out.println("getBoardBiz");
		return newsDao.getFindNews(news_no);
	}
	
	// 메인페이지 공지사항 5개 뿌려주기
	public List<NewsVo> getNewsFive(NewsVo vo){
		return newsDao.getNewsFive(vo);
	}
	
	// 공지 글 입력
	public int getInsertNews(NewsVo vo) {
		System.out.println("글쓰기 Biz");
		NewsVo bv = new NewsVo();
		bv.setNews_no(vo.getNews_no());
		bv.setTitle(vo.getTitle());
		bv.setContent(vo.getContent());
		bv.setWriter(vo.getWriter());
		
		return newsDao.getinsertNews(bv);
	}
	
	// 공지 글 수정
	public int getUpdateNews(NewsVo vo) {
		System.out.println("수정 BIZ");
		NewsVo bv = new NewsVo();
		
		bv.setTitle(vo.getTitle());
		bv.setContent(vo.getContent());
		bv.setWriter(vo.getWriter());
		bv.setNews_no(vo.getNews_no());
		
		return newsDao.updateNews(bv);
	}
	
	// 공지 글 삭제
	public int getDelNews(int news_no) {
		return newsDao.deleteNews(news_no);
	}
}
