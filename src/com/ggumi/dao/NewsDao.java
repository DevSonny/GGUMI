package com.ggumi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ggumi.vo.board.NewsVo;

@Repository("newsDao")
public class NewsDao implements INews{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	// CRUD 기능의 메소드 구현
	// 리스트 전체 출력
	public List<NewsVo> getAllNews(NewsVo vo){
		Object[] args = {vo.getSearchKeyword()};
		if(vo.getSearchCondotion().equals("title")) {
			System.out.println("제목으로 검색");
			System.out.println(vo.getSearchCondotion());
			System.out.println(vo.getSearchCondotion().equals("title"));
			List<NewsVo> all = jdbcTemplate.query(news_list_t, args,
				new RowMapper<NewsVo>() {
					public NewsVo mapRow(ResultSet rs, int rowNum) throws SQLException{
						NewsVo news = 
						new NewsVo(rs.getInt("news_no"),
								rs.getString("title"),
								rs.getString("content"),
								rs.getString("writer"),
								rs.getDate("regi_date"),
								rs.getInt("view_count"));
							return news;					
						}
					});
				return all;
			}else if(vo.getSearchCondotion().equals("content")) {
				System.out.println("내용으로 검색");
				System.out.println(vo.getSearchCondotion());
				System.out.println(vo.getSearchCondotion().equals("content"));
				List<NewsVo> all = jdbcTemplate.query(news_list_c, args,
						new RowMapper<NewsVo>() {
							public NewsVo mapRow(ResultSet rs, int rowNum) throws SQLException{
								NewsVo news = 
								new NewsVo(rs.getInt("notice_no"),
										rs.getString("title"),
										rs.getString("content"),
										rs.getString("writer"),
										rs.getDate("regi_date"),
										rs.getInt("view_count"));
							return news;
						}
					});
					return all;
			}
			System.out.println("검색 둘 다 아니고 그냥 화면에 뿌려줄 때");
			List<NewsVo> all = jdbcTemplate.query(find_newslist,
					new RowMapper<NewsVo>() {
						public NewsVo mapRow(ResultSet rs, int rowNum) throws SQLException{
							NewsVo news = 
							new NewsVo(rs.getInt("notice_no"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getString("writer"),
									rs.getDate("regi_date"),
									rs.getInt("view_count"));
						return news;
					}
				});
			return all;
		}
	
	// 글 상세 조회
	public NewsVo getFindNews(int news_no) {
		System.out.println("==>DAO Spring JDBC로 getFindBoard() 기능 처리");
		try {
			NewsVo vo = (NewsVo) jdbcTemplate.queryForObject(find_news, new Object[] {news_no},new RowMapper<NewsVo>() {
				public NewsVo mapRow(ResultSet rs, int rowNum) throws SQLException {
					NewsVo news = new NewsVo();
					news.setNews_no(rs.getInt("news_no"));
					news.setTitle(rs.getString("title"));
					news.setWriter(rs.getString("writer"));
					news.setContent(rs.getString("content"));
					news.setregi_date(rs.getDate("regi_date"));
					news.setView_count(rs.getInt("view_count"));
						
					return news;
				}
			});
			this.updateViewCount(news_no);
			return vo;
		}catch (EmptyResultDataAccessException e) {
			return null;
		}
		
	}
	
	// 공지사항 조회수 증가
	public int updateViewCount(int news_no) throws DataAccessException{
		Object[] obj = {news_no};
		return jdbcTemplate.update(update_view_count_n, obj);
	}
	
	// 메인페이지 공지사항 5개 뿌려주기
	public List<NewsVo> getNewsFive(NewsVo vo){
		List<NewsVo> fiven = jdbcTemplate.query(find_news_five,
				new RowMapper<NewsVo>() {
					public NewsVo mapRow(ResultSet rs, int rowNum) throws SQLException{
						NewsVo news = 
						new NewsVo(rs.getInt("news_no"),
								rs.getString("title"),
								rs.getString("content"),
								rs.getString("writer"),
								rs.getDate("regi_date"),
								rs.getInt("view_count"));
					return news;
				}
			});
		return fiven;
	}
	
	// 글 등록
	public int getinsertNews(NewsVo vo) {
		System.out.println("==>DAO Spring JDBC로 insertBoard() 기능 처리");
		int n = jdbcTemplate.update(insert_news, new Object[] {vo.getTitle(),
				vo.getContent(),vo.getWriter()});
		return n;
	}
	
	// 글 수정
	public int updateNews(NewsVo vo) {
		System.out.println("수정 DAO " + vo.getNews_no());
		return jdbcTemplate.update(update_news, new Object[] {vo.getTitle(),
			vo.getContent(),vo.getWriter(),vo.getNews_no()});
	}
	
	// 글 삭제
	public int deleteNews(int news_no) {
		System.out.println("==> Spring JDBC로 deleteBoard() 기능 처리");
		int r = jdbcTemplate.update(delete_news, news_no);
		return r;
	}
}
