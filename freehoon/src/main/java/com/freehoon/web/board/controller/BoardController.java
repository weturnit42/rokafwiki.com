package com.freehoon.web.board.controller;

import javax.inject.Inject;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.freehoon.common.Pagination;
import com.freehoon.common.Search;
import com.freehoon.web.board.model.BoardVO;

import com.freehoon.web.board.service.BoardService;

@Controller

@RequestMapping(value = "/board")

public class BoardController {

	@Inject
	private BoardService boardService;

	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)
	public String getBoardList(Model model, @RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "1") int range, @RequestParam(value="searchType",defaultValue = "title") String searchType,
			@RequestParam(required = false) String keyword, @ModelAttribute("search") Search search) throws Exception {

		// 검색
		model.addAttribute("search", search);
		search.setSearchType(searchType);
		search.setKeyword(keyword);

		// 전체 게시글 개수
		int listCnt = boardService.getBoardListCnt(search);

		// 검색
		search.pageInfo(page, range, listCnt);

		// 페이징
		model.addAttribute("pagination", search);

		// 게시글 화면 출력
		model.addAttribute("boardList", boardService.getBoardList(search));
		return "board/index";
	}

	@RequestMapping(value = "/getBoardLog", method = RequestMethod.GET)
	public String getBoardLogList(Model model, @RequestParam("bid") int bid) throws Exception {
		model.addAttribute("boardLogList", boardService.getBoardLogList(bid));
		//model.addAttribute("boardContent", boardService.getBoardContent(bbid));
		return "board/boardLogIndex";
	}
	@RequestMapping(value = "/getBoardLogContent", method = RequestMethod.GET)
	public String getBoardLogContent(Model model, @RequestParam("bbid") int bbid) throws Exception {
		model.addAttribute("boardLogContent", boardService.getBoardLogContent(bbid));
		//model.addAttribute("boardContent", boardService.getBoardContent(bid));
		return "board/boardLogContent";
	}
	
	@RequestMapping("/boardForm")
	public String boardForm(@ModelAttribute("boardVO") BoardVO vo, Model model) {
		return "board/boardForm";
	}
	
	@RequestMapping("/FrontPage")
	public String FrontPage() {
		return "board/FrontPage";
	}
	
	@RequestMapping("/SpecialThanks")
	public String SpecialThanks() {
		return "board/SpecialThanks";
	}
	
	@RequestMapping("/WelcomeClock")
	public String WelcomeClock() {
		return "board/WelcomeClock";
	}
	
	@RequestMapping("/ROKAF_MBTI/Q1")
	public String Q1(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q1";
	}
	
	@RequestMapping("/ROKAF_MBTI/Q2_1")
	public String Q2_1(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q2_1";
	}
	@RequestMapping("/ROKAF_MBTI/Q2_2")
	public String Q2_2(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q2_2";
	}	
	@RequestMapping("/ROKAF_MBTI/Q2_3")
	public String Q2_3(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q2_3";
	}	
	@RequestMapping("/ROKAF_MBTI/Q2_4")
	public String Q2_4(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q2_4";
	}
	@RequestMapping("/ROKAF_MBTI/Q2_5")
	public String Q2_5(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q2_5";
	}
	
	@RequestMapping("/ROKAF_MBTI/Q3_1")
	public String Q3_1(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q3_1";
	}
	@RequestMapping("/ROKAF_MBTI/Q3_2")
	public String Q3_2(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q3_2";
	}	
	@RequestMapping("/ROKAF_MBTI/Q3_3")
	public String Q3_3(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q3_3";
	}	
	@RequestMapping("/ROKAF_MBTI/Q3_4")
	public String Q3_4(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q3_4";
	}
	@RequestMapping("/ROKAF_MBTI/Q3_5")
	public String Q3_5(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q3_5";
	}

	@RequestMapping("/ROKAF_MBTI/Q4")
	public String Q4(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q4";
	}
	
	@RequestMapping("/ROKAF_MBTI/Q5")
	public String Q5(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q5";
	}

	@RequestMapping("/ROKAF_MBTI/Q6")
	public String Q6(final HttpServletResponse response) {
		response.addHeader("Access-Control-Allow-Origin", "*");
		return "board/ROKAF_MBTI/Q6";
	}

	@RequestMapping(value = "/saveBoard", method = RequestMethod.POST)
	public String saveBoard(@ModelAttribute("boardVO") BoardVO boardVO, @RequestParam("mode") String mode,
			RedirectAttributes rttr) throws Exception {
		if (mode.equals("edit")) {
			boardService.updateBoard(boardVO);
		} else {
			boardService.insertBoard(boardVO);
		}
		return "redirect:/board/getBoardList";
	}

	@RequestMapping(value = "/getBoardContent", method = RequestMethod.GET)
	public String getBoardContent(Model model, @RequestParam("bid") int bid) throws Exception {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		return "board/boardContent";
	}

	@RequestMapping(value = "/editForm", method = RequestMethod.GET)
	public String editForm(@RequestParam("bid") int bid, @RequestParam("mode") String mode, Model model)
			throws Exception {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		model.addAttribute("mode", mode);
		model.addAttribute("boardVO", new BoardVO());

		return "board/boardForm";
	}
	
	@RequestMapping(value = "/editLogForm", method = RequestMethod.GET)
	public String editLogForm(@RequestParam("bid") int bid, @RequestParam("mode") String mode, Model model)
			throws Exception {
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		model.addAttribute("mode", mode);
		model.addAttribute("boardVO", new BoardVO());

		return "board/boardLogForm";
	}

	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String deleteBoard(RedirectAttributes rttr, @RequestParam("bid") int bid) throws Exception {
		boardService.deleteBoard(bid);
		return "redirect:/board/getBoardList";
	}
}