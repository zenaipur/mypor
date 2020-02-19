package com.myspring.mypor.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.mypor.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	/* 전체 회원 조회 */
	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}

	/* 회원 정보 추가 */
	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}

	/* 회원 정보 수정 */
	@Override
	public int updateMember(MemberVO memberVO) throws DataAccessException {
		System.out.println(memberVO);
		int result = sqlSession.update("mapper.member.updateMember", memberVO);
		return result;
	}

	/* 회원 정보 삭제 */
	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}

	/* 로그인시 회원 존재여부 체크 */
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException {
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById", memberVO);
		return vo;
	}

	/* 회원 아이디 찾기 */
	@Override
	public MemberVO findMember(String id) throws DataAccessException {
		MemberVO memberVO = sqlSession.selectOne("mapper.member.selectMemberById", id);
		return memberVO;
	}

}
