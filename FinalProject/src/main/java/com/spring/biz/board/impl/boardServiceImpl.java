package com.spring.biz.board.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.board.boardService;
import com.spring.biz.board.boardVO;
@Service("boardService")
public class boardServiceImpl implements boardService {
	@Autowired
	private BoardDAO boardDAO;
	@Override
	public boardVO getBoard(boardVO vo) {
		// TODO Auto-generated method stub
		return boardDAO.getBoard(vo);
	}

}
