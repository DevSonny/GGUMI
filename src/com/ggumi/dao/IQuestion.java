package com.ggumi.dao;

public interface IQuestion {
	String insert_question = "insert into question(que_no,title,writer,content)"
			+ "values((select nvl(max(que_no),0)+1 from question),?,?,?)";
	
	String find_questionlist = "select que_no,title,content,writer,regi_date,view_count from question order by que_no desc";
	
//	String find_question_five = "select * from question where rownum >= 1 and rownum <= 5 order by que_no desc";
	
	String delete_question = "delete from question where que_no=?";
	
	String find_question = "select * from question where que_no=?";
	
//	String count_notice = "select count(*) from notice";
	
	String update_question = "update question set title=?,writer=?,content=? where que_no=?";
	
	String question_list_t = "select que_no,title,content,writer,regi_date,view_count from question where title like '%'||?||'%' order by que_no desc";
	
	String question_list_c = "select que_no,title,content,writer,regi_date,view_count from question where content like '%'||?||'%' order by que_no desc";
	
	String update_view_count = "update question set view_count = nvl(view_count,0) + 1 where que_no=?";
}
