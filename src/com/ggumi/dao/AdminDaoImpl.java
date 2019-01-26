package com.ggumi.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ggumi.vo.admin.AdminVo;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSessionFactory factory;

	// 관리자 로그아웃 처리
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	// 관리자정보 입력
	@Override
	public String insert(AdminVo vo) {
		String joined_admin_id = null;
		try(SqlSession session = factory.openSession();){
			int n = session.insert("admin.insert", vo);
			if(n>0) {
				joined_admin_id = vo.getAdmin_id();
				session.commit();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return joined_admin_id;
	}

	// 회원정보 조회(id,pw 이용)
	@Override
	public AdminVo selectByIdPw(AdminVo vo) {
		AdminVo admin = null;
		try(SqlSession session = factory.openSession();){
			admin = session.selectOne("admin.selectByIdPw",vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return admin;
	}

	// 관리자정보 수정
	@Override
	public String update(AdminVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	// 관리자정보 삭제
	@Override
	public String delete(AdminVo vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
