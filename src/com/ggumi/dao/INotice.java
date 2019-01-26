package com.ggumi.dao;

public interface INotice {
	String insert_notice = "insert into notice(notice_no,admin_no,title,writer,content,notice_filename)"
			+ "values((select nvl(max(notice_no),0)+1 from notice),100,?,?,?,?)";
	
	String find_noticelist = "select (select count(*) from notice) total,notice_no,title,content,writer,regi_date,view_count,notice_filename from notice order by notice_no desc";
	
	String find_notice_five = "select * from notice where rownum >= 1 and rownum <= 5 order by notice_no desc";
	
	String delete_notice = "delete from notice where notice_no=?";
	
	String find_notice = "select * from notice where notice_no=?";
	
//	String count_notice = "select count(*) from notice";
	
	String update_notice = "update notice set title=?,writer=?,content=? where notice_no=?";
	
	String notice_list_t = "select (select count(*) from notice) total,notice_no,title,content,writer,regi_date,view_count,notice_filename from notice where title like '%'||?||'%' order by notice_no desc";
	
	String notice_list_c = "select (select count(*) from notice) total,notice_no,title,content,writer,regi_date,view_count,notice_filename from notice where content like '%'||?||'%' order by notice_no desc";
	
	String update_view_count = "update notice set view_count = nvl(view_count,0) + 1 where notice_no=?";
}
