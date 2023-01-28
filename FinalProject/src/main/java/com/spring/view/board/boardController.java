package com.spring.view.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.board.boardService;
import com.spring.biz.board.boardVO;

@Controller
@SessionAttributes({"board"})
public class boardController {
@Autowired
private boardService boardService;

@RequestMapping(value = "/getBoard.do")
public String getBoard(Model model,boardVO vo) {
	model.addAttribute("board",boardService.getBoard(vo));
	return "testReport.jsp";
}
}
