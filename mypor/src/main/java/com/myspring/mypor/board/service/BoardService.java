package com.myspring.mypor.board.service;

import java.util.List;
import java.util.Map;

import com.myspring.mypor.board.vo.ArticleVO;

public interface BoardService {
	/* 전체 게시글 목록 조회 */
	public List<ArticleVO> listArticles() throws Exception;

	/* 새 글 추가 */
	public int addNewArticle(Map articleMap) throws Exception;

	/* 글 상세보기 */
	public ArticleVO viewArticle(int articleNO) throws Exception;

	/* 글 수정 */
	public void modArticle(Map articleMap) throws Exception;

	/* 글 삭제 */
	public void removeArticle(int articleNO) throws Exception;
}

