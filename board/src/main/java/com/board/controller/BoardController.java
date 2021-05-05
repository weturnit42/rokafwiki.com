package com.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.dao.BoardDAO;
import com.board.domain.BoardVO;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	private BoardService service;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {

		List list = null;
		list = service.list();
		model.addAttribute(list.toString(), list);
	}
	
	// 도전
//	@RequestMapping(value = "/도전", method = RequestMethod.GET)
//	public void getListATest(Model model) throws Exception {
//		
//		List list = null;
//		list = service.list();
//		model.addAttribute("도전", list);   
//	}
}