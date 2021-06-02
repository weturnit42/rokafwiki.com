package com.freehoon.web.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.freehoon.common.Pagination;
import com.freehoon.common.Search;
import com.freehoon.web.board.dao.BoardDAO;

import com.freehoon.web.board.model.BoardVO;

@Service

public class BoardServiceImpl implements BoardService {
	@Inject
	private BoardDAO boardDAO;

	public List<BoardVO> getBoardList(Search search) throws Exception {
		return boardDAO.getBoardList(search);
	}
	
	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return boardDAO.getBoardListCnt(search);
	}

	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		boardDAO.insertBoard(boardVO);
	}

	public BoardVO getBoardContent(int bid) throws Exception {
		boardDAO.updateViewCnt(bid);
		return boardDAO.getBoardContent(bid);
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		boardDAO.updateBoard(boardVO);
	}
	
	@Override

	public void deleteBoard(int bid) throws Exception {
		 boardDAO.deleteBoard(bid);
	}
}