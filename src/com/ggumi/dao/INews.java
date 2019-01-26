package com.ggumi.dao;

public interface INews {
	String insert_news = "insert into BUSINESS_NEWS(news_no,admin_no,title,writer,content)"
			+ "values((select nvl(max(news_no),0)+1 from BUSINESS_NEWS),100,?,?,?)";
	
	String find_newslist = "select * from BUSINESS_NEWS order by news_no desc";
	
	String find_news_five = "select * from BUSINESS_NEWS where rownum >= 1 and rownum <= 5 order by news_no desc";
	
	String delete_news = "delete from BUSINESS_NEWS where news_no=?";
	
	String find_news = "select * from BUSINESS_NEWS where news_no=?";
	
	String update_news = "update BUSINESS_NEWS set title=?,writer=?,content=? where news_no=?";
	
	String news_list_t = "select * from BUSINESS_NEWS where title like '%'||?||'%' order by news_no desc";
	
	String news_list_c = "select * from BUSINESS_NEWS where content like '%'||?||'%' order by news_no desc";
	
	String update_view_count_n = "update BUSINESS_NEWS set view_count = nvl(view_count,0) + 1 where news_no=?";
}
