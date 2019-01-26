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

import com.ggumi.vo.board.QuestionVo;

@Repository("questionDao")
public class QuestionDao implements IQuestion{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	// 리스트 전체 출력
	public List<QuestionVo> getAllQuestion(QuestionVo vo){
		Object[] args = {vo.getSearchKeyword()};
		if(vo.getSearchCondotion().equals("title")) {
			System.out.println("제목으로 검색");
			System.out.println(vo.getSearchCondotion());
			System.out.println(vo.getSearchCondotion().equals("title"));
			List<QuestionVo> queall = jdbcTemplate.query(question_list_t, args,
				new RowMapper<QuestionVo>() {
					public QuestionVo mapRow(ResultSet rs, int rowNum) throws SQLException{
						QuestionVo question = 
						new QuestionVo(
								rs.getInt("que_no"),
								rs.getString("title"),
								rs.getString("writer"),
								rs.getString("content"),
								rs.getDate("regi_date"),
								rs.getInt("view_count"));
							return question;					
						}
					});
				return queall;
			}else if(vo.getSearchCondotion().equals("content")) {
				System.out.println("내용으로 검색");
				System.out.println(vo.getSearchCondotion());
				System.out.println(vo.getSearchCondotion().equals("content"));
				List<QuestionVo> queall = jdbcTemplate.query(question_list_c, args,
						new RowMapper<QuestionVo>() {
							public QuestionVo mapRow(ResultSet rs, int rowNum) throws SQLException{
								QuestionVo question = 
								new QuestionVo(rs.getInt("que_no"),
										rs.getString("title"),
										rs.getString("content"),
										rs.getString("writer"),
										rs.getDate("regi_date"),
										rs.getInt("view_count"));
							return question;
						}
					});
					return queall;
			}
			System.out.println("검색 둘 다 아니고 그냥 화면에 뿌려줄 때");
			List<QuestionVo> queall = jdbcTemplate.query(find_questionlist,
					new RowMapper<QuestionVo>() {
						public QuestionVo mapRow(ResultSet rs, int rowNum) throws SQLException{
							QuestionVo question = 
							new QuestionVo(rs.getInt("que_no"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getString("writer"),
									rs.getDate("regi_date"),
									rs.getInt("view_count"));
						return question;
					}
				});
			return queall;
		}
	
	// 글 상세 조회
	public QuestionVo getFindQuestion(int que_no) {
		System.out.println("==>DAO Spring JDBC로 getFindBoard() 기능 처리");
		try {
			QuestionVo vo = (QuestionVo) jdbcTemplate.queryForObject(find_question, new Object[] {que_no},new RowMapper<QuestionVo>() {
				public QuestionVo mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuestionVo question = new QuestionVo();
					question.setQue_no(rs.getInt("que_no"));
					question.setTitle(rs.getString("title"));
					question.setWriter(rs.getString("writer"));
					question.setContent(rs.getString("content"));
					question.setRegi_date(rs.getDate("regi_date"));
					question.setView_count(rs.getInt("view_count"));
							
						return question;
					}
				});
				this.updateViewCount(que_no);
				return vo;
			}catch (EmptyResultDataAccessException e) {
				return null;
			}
			
		}
		
		// 공지사항 조회수 증가
		public int updateViewCount(int que_no) throws DataAccessException{
			Object[] obj = {que_no};
			return jdbcTemplate.update(update_view_count, obj);
		}
		
		// 글 등록
		public int getinsertQuestion(QuestionVo vo) {
			System.out.println("==>DAO Spring JDBC로 insertBoard() 기능 처리");
			int n = jdbcTemplate.update(insert_question, new Object[] {vo.getTitle(),
					vo.getContent(),vo.getWriter()});
			return n;
		}
		
		// 글 수정
		public int updateQuestion(QuestionVo vo) {
			System.out.println("수정 DAO " + vo.getQue_no());
			return jdbcTemplate.update(update_question, new Object[] {vo.getTitle(),
				vo.getContent(),vo.getWriter(),vo.getQue_no()});
		}
		
		// 글 삭제
		public int deleteQuestion(int que_no) {
			System.out.println("==> Spring JDBC로 deleteBoard() 기능 처리");
			int r = jdbcTemplate.update(delete_question, que_no);
			return r;
		}
}
