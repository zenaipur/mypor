package com.myspring.mypor.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.mypor.member.vo.MemberVO;


public interface MemberController {
	/* 전체 회원 조회 */
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;

	/* 회원 정보 확인 및 로그인 */
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response) throws Exception;

	/* 로그아웃 */
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;

	/* 회원 정보 추가 */
	public ModelAndView addMember(@ModelAttribute("info") MemberVO memberVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	/* 회원 정보 수정 */
	public ModelAndView modMember(@ModelAttribute("info2") MemberVO memberVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	/* 회원 정보 삭제 */
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
}