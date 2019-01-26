package com.ggumi.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ggumi.vo.member.EstateVo;
import com.ggumi.vo.member.MemberVo;
import com.ggumi.vo.member.MyStoreVo;
import com.ggumi.vo.member.RealtorVo;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSessionFactory factory;
	
	
	// 회원 로그아웃 처리
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}
	
	// 회원정보 입력
	@Override
	public String insert(MemberVo vo) {
		String joined_id = null;
		try(SqlSession session = factory.openSession();){
			int n = session.insert("member.insert",vo);
			if(n>0) {
				joined_id = vo.getId();
				session.commit();
			}
		}catch(Exception e) {
				e.printStackTrace();
		}
		return joined_id;
	}

	// 회원정보 조회(id,pw 이용)
	@Override
	public MemberVo selectByIdPw(MemberVo vo) {
		MemberVo member = null;
		try(SqlSession session = factory.openSession();){
			member = session.selectOne("member.selectByIdPw",vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	// 회원정보 수정
	@Override
	public String update(MemberVo vo) {
		System.out.println("다오에서 vo : "+vo);
		String updated_id = null;
		try (SqlSession session = factory.openSession();) {
			int n = session.update("member.update", vo);
			System.out.println("dao:" + updated_id);
			if (n > 0) {
				updated_id = vo.getId();
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return updated_id;
	}

	// 회원정보 삭제
	@Override
	public String delete(MemberVo vo) {
		String out_id = null;
		try (SqlSession session = factory.openSession();) {
			System.out.println("deleteDao에서vo"+vo);
			int n = session.delete("member.delete",vo);
			if (n > 0) {
				session.commit();
			}else {
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return out_id;
	}

	// 회원정보 조회(id 이용)
	@Override
	public MemberVo selectById(String id) {
		MemberVo member = null;
		try(SqlSession session = factory.openSession();){
			member = session.selectOne("member.selectById",id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	//회원정보 조회(mem_no 이용)
	public MemberVo selectByMemNo(int mem_no) {
		MemberVo member = null;
		try(SqlSession session = factory.openSession();){
			member = session.selectOne("member.selectByMemNo",mem_no);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	

	// 부동산매물등록하기! 
	@Override
	public int addEstate(EstateVo vo) {
		int mem_no = 0;
		try(SqlSession session = factory.openSession();){
			int n = session.insert("member.insertEstate", vo);
				if(n>0) {
					mem_no = vo.getMem_no();
					session.commit();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		
		return mem_no;
	}

	// 공인중개사등록
	@Override
	public int insertRealtor(RealtorVo vo) {
		int mem_no = 0;
		try(SqlSession session = factory.openSession();){
			int result = session.insert("member.proc_up_cd",vo);
			if(result>0) {
				mem_no = vo.getMem_no();
				session.commit();
			}
		}catch(Exception e) {
				e.printStackTrace();
		}
		return mem_no; 
		
	}
	
	
	// 내가게 등록 
	public int insertMyStore(MyStoreVo vo) {
		System.out.println("dao insertMyStore : "+vo);
		try(SqlSession session = factory.openSession();){
			int n = session.insert("member.insertMyStore",vo);
			if(n>0) {
				return n;
			}
		}catch(Exception e) {
				e.printStackTrace();
		}
		return 0;
	}
	

	
}
