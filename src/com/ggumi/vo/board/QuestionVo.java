package com.ggumi.vo.board;

import java.util.Date;

public class QuestionVo {
	private int que_no;
	private String title;
	private String content;
	private String writer;
	private Date regi_date;
	private int view_count;
	private String searchCondotion;
	private String searchKeyword;
	private int oftenquestion;
	private int c_code;
	private String comment;
	
	public int getC_code() {
		return c_code;
	}
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
	
	public int getQue_no() {
		return que_no;
	}
	public void setQue_no(int que_no) {
		this.que_no = que_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegi_date() {
		return regi_date;
	}
	public void setRegi_date(Date regi_date) {
		this.regi_date = regi_date;
	}
	public String getSearchCondotion() {
		return searchCondotion;
	}
	public void setSearchCondotion(String searchCondotion) {
		this.searchCondotion = searchCondotion;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public int getOftenquestion() {
		return oftenquestion;
	}
	public void setOftenquestion(int oftenquestion) {
		this.oftenquestion = oftenquestion;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	
	public QuestionVo() {
		super();
	}
	
	public QuestionVo(int que_no, String title, String content, String writer, Date regi_date, int view_count,
			String searchCondotion, String searchKeyword, int oftenquestion) {
		super();
		this.que_no = que_no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regi_date = regi_date;
		this.view_count = view_count;
		this.searchCondotion = searchCondotion;
		this.searchKeyword = searchKeyword;
		this.oftenquestion = oftenquestion;
	}
	
	
	
	public QuestionVo(int que_no, String title, String content, String writer, Date regi_date, int view_count) {
		super();
		this.que_no = que_no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regi_date = regi_date;
		this.view_count = view_count;
	}
	@Override
	public String toString() {
		return "QuestionVo [que_no=" + que_no + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regi_date=" + regi_date + ", view_count=" + view_count + ", searchCondotion=" + searchCondotion
				+ ", searchKeyword=" + searchKeyword + ", oftenquestion=" + oftenquestion + "]";
	}
	
}
