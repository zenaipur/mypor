package com.myspring.mypor.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.mypor.member.dao.MemberDAO;
import com.myspring.mypor.member.vo.MemberVO;

@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	/* 전체 회원 조회 */
	@Override
	public List listMembers() throws DataAccessException {
		List membersList = null;
		membersList = memberDAO.selectAllMemberList();
		return membersList;
	}

	/* 회원 정보 추가 */
	@Override
	public int addMember(MemberVO memberVO) throws DataAccessException {
		return memberDAO.insertMember(memberVO);
	}

	/* 회원 정보 수정 */
	@Override
	public int modMember(MemberVO memberVO) throws DataAccessException {
		return memberDAO.updateMember(memberVO);
	}

	/* 회원 정보 삭제 */
	@Override
	public int removeMember(String id) throws DataAccessException {
		return memberDAO.deleteMember(id);
	}

	/* 로그인시 회원 존재여부 체크 */
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception {
		return memberDAO.loginById(memberVO);
	}

	/* 회원 아이디 찾기 */
	@Override
	public MemberVO selectMember(String id) throws DataAccessException {
		return memberDAO.findMember(id);
	}

}
