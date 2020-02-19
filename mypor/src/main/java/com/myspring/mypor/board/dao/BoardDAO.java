package com.myspring.mypor.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.mypor.board.vo.ArticleVO;


public interface BoardDAO {
	/* 전체 게시글 목록 조회 */
	public List selectAllArticlesList() throws DataAccessException;

	/* 새 글 추가 */
	public int insertNewArticle(Map articleMap) throws DataAccessException;

	/* 글 상세보기 */
	public ArticleVO selectArticle(int articleNO) throws DataAccessException;

	/* 글 수정 */
	public void updateArticle(Map articleMap) throws DataAccessException;

	/* 글 삭제 */
	public void deleteArticle(int articleNO) throws DataAccessException;
}
