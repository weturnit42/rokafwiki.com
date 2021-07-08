package com.freehoon.web.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

import com.freehoon.common.Pagination;
import com.freehoon.common.Search;
import com.freehoon.web.board.model.BoardVO;

@Repository

public class BoardDAOImpl implements BoardDAO {
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<BoardVO> getBoardList(Search search) throws Exception {
		return sqlSession.selectList("com.freehoon.web.board.boardMapper.getBoardList",search);
	}

	// 총 게시글 개수 확인
	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return sqlSession.selectOne("com.freehoon.web.board.boardMapper.getBoardListCnt", search);
	}

	@Override
	public BoardVO getBoardContent(int bid) throws Exception {
		return sqlSession.selectOne("com.freehoon.web.board.boardMapper.getBoardContent", bid);
	}

	@Override
	public int insertBoard(BoardVO boardVO) throws Exception {
		return sqlSession.insert("com.freehoon.web.board.boardMapper.insertBoard", boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {
		return sqlSession.update("com.freehoon.web.board.boardMapper.updateBoard", boardVO);
	}

	@Override
	public int deleteBoard(int bid) throws Exception {
		return sqlSession.insert("com.freehoon.web.board.boardMapper.deleteBoard", bid);
	}

	@Override
	public int updateViewCnt(int bid) throws Exception {
		return sqlSession.update("com.freehoon.web.board.boardMapper.updateViewCnt", bid);
	}
	
	@Override
	public List<BoardVO> getBoardLogList(int bid) throws Exception {
		return sqlSession.selectList("com.freehoon.web.board.boardMapper.getBoardLog", bid);
	}
	
	@Override
	public BoardVO getBoardLogContent(int bbid) throws Exception {
		return sqlSession.selectOne("com.freehoon.web.board.boardMapper.getBoardLogContent", bbid);
	}
}