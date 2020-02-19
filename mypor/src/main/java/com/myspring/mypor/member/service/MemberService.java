package com.myspring.mypor.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.mypor.member.vo.MemberVO;

public interface MemberService {
	/* 전체 회원 조회 */
	public List listMembers() throws DataAccessException;

	/* 회원 정보 추가 */
	public int addMember(MemberVO memberVO) throws DataAccessException;

	/* 회원 정보 수정 */
	public int modMember(MemberVO memberVO) throws DataAccessException;

	/* 회원 정보 삭제 */
	public int removeMember(String id) throws DataAccessException;

	/* 로그인시 회원 존재여부 체크 */
	public MemberVO login(MemberVO memberVO) throws Exception;

	/* 회원 아이디 찾기 */
	public MemberVO selectMember(String id) throws DataAccessException;
}
