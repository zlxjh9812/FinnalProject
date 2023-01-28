package com.spring.biz.board.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.board.boardVO;
@Repository
public class BoardDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public boardVO getBoard(boardVO vo) {
		return mybatis.selectOne("BoardDAO.getBoard",vo);
	}
}
