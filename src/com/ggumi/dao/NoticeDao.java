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

import com.ggumi.vo.board.NoticeVo;

@Repository("noticeDao")
public class NoticeDao implements INotice{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	// CRUD 기능의 메소드 구현
	// 리스트 전체 출력
	public List<NoticeVo> getAllNotice(NoticeVo vo){
		Object[] args = {vo.getSearchKeyword()};
		if(vo.getSearchCondotion().equals("title")) {
			System.out.println("제목으로 검색");
			System.out.println(vo.getSearchCondotion());
			System.out.println(vo.getSearchCondotion().equals("title"));
			List<NoticeVo> all = jdbcTemplate.query(notice_list_t, args,
				new RowMapper<NoticeVo>() {
					public NoticeVo mapRow(ResultSet rs, int rowNum) throws SQLException{
						NoticeVo notice = 
						new NoticeVo(rs.getInt("total"),
								rs.getInt("notice_no"),
								rs.getString("title"),
								rs.getString("content"),
								rs.getString("writer"),
								rs.getDate("regi_date"),
								rs.getInt("view_count"));
							return notice;					
						}
					});
				return all;
			}else if(vo.getSearchCondotion().equals("content")) {
				System.out.println("내용으로 검색");
				System.out.println(vo.getSearchCondotion());
				System.out.println(vo.getSearchCondotion().equals("content"));
				List<NoticeVo> all = jdbcTemplate.query(notice_list_c, args,
						new RowMapper<NoticeVo>() {
							public NoticeVo mapRow(ResultSet rs, int rowNum) throws SQLException{
								NoticeVo notice = 
								new NoticeVo(rs.getInt("total"),
										rs.getInt("notice_no"),
										rs.getString("title"),
										rs.getString("content"),
										rs.getString("writer"),
										rs.getDate("regi_date"),
										rs.getInt("view_count"));
							return notice;
						}
					});
					return all;
			}
			System.out.println("검색 둘 다 아니고 그냥 화면에 뿌려줄 때");
			List<NoticeVo> all = jdbcTemplate.query(find_noticelist,
					new RowMapper<NoticeVo>() {
						public NoticeVo mapRow(ResultSet rs, int rowNum) throws SQLException{
							NoticeVo notice = 
							new NoticeVo(rs.getInt("total"),
									rs.getInt("notice_no"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getString("writer"),
									rs.getDate("regi_date"),
									rs.getInt("view_count"));
						return notice;
					}
				});
			return all;
		}
	
	// 글 상세 조회
	public NoticeVo getFindNotice(int notice_no) {
		System.out.println("==>DAO Spring JDBC로 getFindBoard() 기능 처리");
		try {
			NoticeVo vo = (NoticeVo) jdbcTemplate.queryForObject(find_notice, new Object[] {notice_no},new RowMapper<NoticeVo>() {
				public NoticeVo mapRow(ResultSet rs, int rowNum) throws SQLException {
					NoticeVo notice = new NoticeVo();
					notice.setNotice_no(rs.getInt("notice_no"));
					notice.setTitle(rs.getString("title"));
					notice.setWriter(rs.getString("writer"));
					notice.setContent(rs.getString("content"));
					notice.setregi_date(rs.getDate("regi_date"));
					notice.setView_count(rs.getInt("view_count"));
					notice.setNotice_filename(rs.getString("notice_filename"));
						
					return notice;
				}
			});
			this.updateViewCount(notice_no);
			return vo;
		}catch (EmptyResultDataAccessException e) {
			return null;
		}
		
	}
	
	// 공지사항 조회수 증가
	public int updateViewCount(int notice_no) throws DataAccessException{
		Object[] obj = {notice_no};
		return jdbcTemplate.update(update_view_count, obj);
	}
	
	// 메인페이지 공지사항 5개 뿌려주기
	public List<NoticeVo> getNoticeFive(NoticeVo vo){
		List<NoticeVo> five = jdbcTemplate.query(find_notice_five,
				new RowMapper<NoticeVo>() {
					public NoticeVo mapRow(ResultSet rs, int rowNum) throws SQLException{
						NoticeVo notice = 
						new NoticeVo(
								rs.getInt("notice_no"),
								rs.getString("title"),
								rs.getString("content"),
								rs.getString("writer"),
								rs.getDate("regi_date"),
								rs.getInt("view_count"));
					return notice;
				}
			});
		return five;
	}
	
	// 글 등록
	public int getinsertNotice(NoticeVo vo) {
		System.out.println("==>DAO Spring JDBC로 insertBoard() 기능 처리");
		int n = jdbcTemplate.update(insert_notice, new Object[] {vo.getTitle(),
				vo.getContent(),vo.getWriter(), vo.getNotice_filename()});
		return n;
	}
	
	// 글 수정
	public int updateNotice(NoticeVo vo) {
		System.out.println("수정 DAO " + vo.getNotice_no());
		return jdbcTemplate.update(update_notice, new Object[] {vo.getTitle(),
			vo.getContent(),vo.getWriter(),vo.getNotice_no()});
	}
	
	// 글 삭제
	public int deleteNotice(int notice_no) {
		System.out.println("==> Spring JDBC로 deleteBoard() 기능 처리");
		int r = jdbcTemplate.update(delete_notice, notice_no);
		return r;
	}
}
