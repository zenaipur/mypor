package com.myspring.mypor.member.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.mypor.member.vo.MemberVO;


public interface MemberDAO {
	/* 전체 회원 조회 */
	public List selectAllMemberList() throws DataAccessException;

	/* 회원 정보 추가 */
	public int insertMember(MemberVO memberVO) throws DataAccessException ;
	
	/* 회원 정보 수정 */
	public int updateMember(MemberVO memberVO) throws DataAccessException;

	/* 회원 정보 삭제 */
	public int deleteMember(String id) throws DataAccessException;

	/* 로그인시 회원 존재여부 체크 */
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	
	/* 회원 아이디 찾기 */
	public MemberVO findMember(String id) throws DataAccessException;
}
