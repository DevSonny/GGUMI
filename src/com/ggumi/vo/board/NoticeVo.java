package com.ggumi.vo.board;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVo {
	private int notice_no;
	private String title;
	private String writer;
	private String content;
	private Date regi_date;
	private int view_count;
	private String searchCondotion;
	private String searchKeyword;
	private MultipartFile uploadFile;
	private String notice_filename;
	private int total;
	
	public NoticeVo() {
		super();
	}
	
	// 지우지는 말 것. 실험용.
	public NoticeVo(String title,String writer, String content,int notice_no) {
		this.notice_no = notice_no;
		this.writer = writer;
		this.title = title;
		this.content = content;
	}

	public NoticeVo(int total, int notice_no, String title, String writer, String content, Date regi_date, int view_count) {
		super();
		this.total = total;
		this.notice_no = notice_no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.regi_date = regi_date;
		this.view_count = view_count;
	}
	
	public NoticeVo(int notice_no, String title, String writer, String content, Date regi_date, int view_count) {
		super();
		this.notice_no = notice_no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.regi_date = regi_date;
		this.view_count = view_count;
	}
	
	
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getregi_date() {
		return regi_date;
	}
	public void setregi_date(Date regi_date) {
		this.regi_date = regi_date;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
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

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getNotice_filename() {
		return notice_filename;
	}

	public void setNotice_filename(String fileName) {
		this.notice_filename = fileName;
	}

	@Override
	public String toString() {
		return "NoticeVo [notice_no=" + notice_no + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regi_date=" + regi_date + ", view_count=" + view_count + ", searchCondotion=" + searchCondotion
				+ ", searchKeyword=" + searchKeyword + ", uploadFile=" + uploadFile + ", notice_filename="
				+ notice_filename + "]";
	}
	
}
